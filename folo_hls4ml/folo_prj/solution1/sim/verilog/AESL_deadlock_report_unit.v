`timescale 1 ns / 1 ps

module AESL_deadlock_report_unit #( parameter PROC_NUM = 4 ) (
    input dl_reset,
    input dl_clock,
    input [PROC_NUM - 1:0] dl_in_vec,
    input [15:0] trans_in_cnt_0,
    input [15:0] trans_out_cnt_0,
    input [15:0] trans_in_cnt_1,
    input [15:0] trans_out_cnt_1,
    input [15:0] trans_in_cnt_2,
    input [15:0] trans_out_cnt_2,
    input [15:0] trans_in_cnt_3,
    input [15:0] trans_out_cnt_3,
    input [15:0] trans_in_cnt_4,
    input [15:0] trans_out_cnt_4,
    input [15:0] trans_in_cnt_5,
    input [15:0] trans_out_cnt_5,
    input [15:0] trans_in_cnt_6,
    input [15:0] trans_out_cnt_6,
    input [15:0] trans_in_cnt_7,
    input [15:0] trans_out_cnt_7,
    input [15:0] trans_in_cnt_8,
    input [15:0] trans_out_cnt_8,
    input [15:0] trans_in_cnt_9,
    input [15:0] trans_out_cnt_9,
    input [15:0] trans_in_cnt_10,
    input [15:0] trans_out_cnt_10,
    input [15:0] trans_in_cnt_11,
    input [15:0] trans_out_cnt_11,
    input [15:0] trans_in_cnt_12,
    input [15:0] trans_out_cnt_12,
    input [15:0] trans_in_cnt_13,
    input [15:0] trans_out_cnt_13,
    input [15:0] trans_in_cnt_14,
    input [15:0] trans_out_cnt_14,
    input [15:0] trans_in_cnt_15,
    input [15:0] trans_out_cnt_15,
    input [15:0] trans_in_cnt_16,
    input [15:0] trans_out_cnt_16,
    input [15:0] trans_in_cnt_17,
    input [15:0] trans_out_cnt_17,
    input [15:0] trans_in_cnt_18,
    input [15:0] trans_out_cnt_18,
    input [15:0] trans_in_cnt_19,
    input [15:0] trans_out_cnt_19,
    input [15:0] trans_in_cnt_20,
    input [15:0] trans_out_cnt_20,
    input [15:0] trans_in_cnt_21,
    input [15:0] trans_out_cnt_21,
    input [15:0] trans_in_cnt_22,
    input [15:0] trans_out_cnt_22,
    input [15:0] trans_in_cnt_23,
    input [15:0] trans_out_cnt_23,
    output dl_detect_out,
    output reg [PROC_NUM - 1:0] origin,
    output token_clear);
   
    // FSM states
    localparam ST_IDLE = 3'b000;
    localparam ST_FILTER_FAKE = 3'b001;
    localparam ST_DL_DETECTED = 3'b010;
    localparam ST_DL_REPORT = 3'b100;

    reg find_df_deadlock;
    reg [2:0] CS_fsm;
    reg [2:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    reg [31:0] dl_keep_cnt;
    reg stop_report_path;
    reg [PROC_NUM - 1:0] reported_proc;
    integer i;
    integer fp;

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            reported_proc <= 'b0;
        end
        else if (CS_fsm == ST_DL_REPORT) begin
            reported_proc <= reported_proc | dl_in_vec;
        end
        else if (CS_fsm == ST_DL_DETECTED) begin
            reported_proc <= 'b0;
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            stop_report_path <= 1'b0;
        end
        else if (CS_fsm == ST_DL_REPORT && (|(dl_in_vec & reported_proc))) begin
            stop_report_path <= 1'b1;
        end
        else if (CS_fsm == ST_IDLE) begin
            stop_report_path <= 1'b0;
        end
    end

    // FSM State machine
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end

    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg or dl_keep_cnt) begin
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_FILTER_FAKE;
                end
                else begin
                    NS_fsm = ST_IDLE;
                end
            end
            ST_FILTER_FAKE: begin
                if (dl_keep_cnt >= 32'd1000) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else if (dl_detect_reg != (dl_detect_reg & dl_in_vec)) begin
                    NS_fsm = ST_IDLE;
                end
                else begin
                    NS_fsm = ST_FILTER_FAKE;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if ((dl_detect_reg != dl_done_reg) && stop_report_path == 1'b0) begin
                    NS_fsm = ST_DL_REPORT;
                end
                else begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                // avoid report deadlock ring.
                else if (|(dl_in_vec & reported_proc)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            default: NS_fsm = ST_IDLE;
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_keep_cnt <= 32'h0;
        end
        else begin
            if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg == (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= dl_keep_cnt + 32'h1;
            end
            else if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg != (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= 32'h0;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = (|dl_detect_reg) && (CS_fsm == ST_DL_DETECTED || CS_fsm == ST_DL_REPORT);

    // dl_done_reg record the cycles has been reported
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    wire [PROC_NUM*PROC_NUM - 1:0] origin_tmp;
    assign origin_tmp[PROC_NUM - 1:0] = (dl_detect_reg[0] & ~dl_done_reg[0]) ? 'b1 : 'b0;
    genvar j;
    generate
    for(j = 1;j < PROC_NUM;j = j + 1) begin: F1
        assign origin_tmp[j*PROC_NUM +: PROC_NUM] = (dl_detect_reg[j] & ~dl_done_reg[j]) ? ('b1 << j) : origin_tmp[(j - 1)*PROC_NUM +: PROC_NUM];
    end
    endgenerate
    always @ (CS_fsm or origin_tmp) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            origin = origin_tmp[(PROC_NUM - 1)*PROC_NUM +: PROC_NUM];
        end
        else begin
            origin = 'b0;
        end
    end

    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // find_df_deadlock to report the deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            find_df_deadlock <= 1'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED && ((dl_detect_reg == dl_done_reg) || (stop_report_path == 1'b1))) begin
                find_df_deadlock <= 1'b1;
            end
            else if (CS_fsm == ST_IDLE) begin
                find_df_deadlock <= 1'b0;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [688:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0";
                end
                1 : begin
                    proc_path = "folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0";
                end
                2 : begin
                    proc_path = "folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0";
                end
                3 : begin
                    proc_path = "folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0";
                end
                4 : begin
                    proc_path = "folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0";
                end
                5 : begin
                    proc_path = "folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0";
                end
                6 : begin
                    proc_path = "folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0";
                end
                7 : begin
                    proc_path = "folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0";
                end
                8 : begin
                    proc_path = "folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0";
                end
                9 : begin
                    proc_path = "folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0";
                end
                10 : begin
                    proc_path = "folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0";
                end
                11 : begin
                    proc_path = "folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0";
                end
                12 : begin
                    proc_path = "folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0";
                end
                13 : begin
                    proc_path = "folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0";
                end
                14 : begin
                    proc_path = "folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0";
                end
                15 : begin
                    proc_path = "folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0";
                end
                16 : begin
                    proc_path = "folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0";
                end
                17 : begin
                    proc_path = "folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0";
                end
                18 : begin
                    proc_path = "folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0";
                end
                19 : begin
                    proc_path = "folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0";
                end
                20 : begin
                    proc_path = "folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0";
                end
                21 : begin
                    proc_path = "folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0";
                end
                22 : begin
                    proc_path = "folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0";
                end
                23 : begin
                    proc_path = "folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0";
                end
                24 : begin
                    proc_path = "folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0";
                end
                25 : begin
                    proc_path = "folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0";
                end
                26 : begin
                    proc_path = "folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0";
                end
                27 : begin
                    proc_path = "folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [688:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [688:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [776:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin // for proc 'folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0'
                    case(index2)
                    1: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'
// for dep channel 'folo.layer32_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.layer32_out_blk_n data_FIFO} {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config32_Pipeline_CopyMain_fu_56.layer32_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.layer32_out_blk_n) | (~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config32_Pipeline_CopyMain_fu_56.layer32_out_blk_n)) begin
                            if (~AESL_inst_folo.layer32_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer32_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer32_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer32_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer32_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer32_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U' read by process 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0',");
                        end
                    end
                    endcase
                end
                1 : begin // for proc 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'
                    case(index2)
                    0: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0'
// for dep channel 'folo.layer32_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.layer32_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.layer32_out_blk_n)) begin
                            if (~AESL_inst_folo.layer32_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer32_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer32_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer32_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer32_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer32_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0',");
                        end
                    end
                    2: begin //  for dep proc 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'
// for dep channel 'folo.layer2_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.layer2_out_blk_n data_FIFO} {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_76.layer2_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.layer2_out_blk_n) | (~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_76.layer2_out_blk_n)) begin
                            if (~AESL_inst_folo.layer2_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer2_out_U' written by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer2_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer2_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer2_out_U' read by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer2_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_full_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.ap_start & ~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_full_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.ap_start & ~AESL_inst_folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U' read by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0',");
                        end
                    end
                    endcase
                end
                2 : begin // for proc 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'
                    case(index2)
                    1: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'
// for dep channel 'folo.layer2_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.layer2_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.layer2_out_blk_n)) begin
                            if (~AESL_inst_folo.layer2_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer2_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer2_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer2_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer2_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer2_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0_U' written by process 'folo.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0',");
                        end
                    end
                    3: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'
// for dep channel 'folo.layer4_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.layer4_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.layer4_out_blk_n)) begin
                            if (~AESL_inst_folo.layer4_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer4_out_U' written by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer4_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer4_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer4_out_U' read by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer4_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U' read by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0',");
                        end
                    end
                    endcase
                end
                3 : begin // for proc 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'
                    case(index2)
                    2: begin //  for dep proc 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'
// for dep channel 'folo.layer4_out_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.layer4_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.layer4_out_blk_n)) begin
                            if (~AESL_inst_folo.layer4_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer4_out_U' written by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer4_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer4_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer4_out_U' read by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer4_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_empty_n & AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.ap_idle & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_empty_n & AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.ap_idle & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U' written by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0',");
                        end
                    end
                    4: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'
// for dep channel 'folo.layer29_cpy1_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.layer29_cpy1_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.layer29_cpy1_blk_n)) begin
                            if (~AESL_inst_folo.layer29_cpy1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer29_cpy1_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer29_cpy1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer29_cpy1_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0',");
                        end
                    end
                    6: begin //  for dep proc 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'
// for dep channel 'folo.layer29_cpy2_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.layer29_cpy2_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.layer29_cpy2_blk_n)) begin
                            if (~AESL_inst_folo.layer29_cpy2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer29_cpy2_U' written by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer29_cpy2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer29_cpy2_U' read by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U' read by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0',");
                        end
                    end
                    endcase
                end
                4 : begin // for proc 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'
                    case(index2)
                    3: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'
// for dep channel 'folo.layer29_cpy1_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_CopyMain_fu_66.layer29_cpy1_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_CopyMain_fu_66.layer29_cpy1_blk_n)) begin
                            if (~AESL_inst_folo.layer29_cpy1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer29_cpy1_U' written by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer29_cpy1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer29_cpy1_U' read by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config38jQ_U' written by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0',");
                        end
                    end
                    5: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'
// for dep channel 'folo.layer33_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.layer33_out_blk_n data_FIFO} {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_PadTopWidth_fu_54.layer33_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.layer33_out_blk_n) | (~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_PadTopWidth_fu_54.layer33_out_blk_n)) begin
                            if (~AESL_inst_folo.layer33_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer33_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer33_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer33_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer33_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer33_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U' read by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0',");
                        end
                    end
                    endcase
                end
                5 : begin // for proc 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'
                    case(index2)
                    4: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'
// for dep channel 'folo.layer33_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.layer33_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.layer33_out_blk_n)) begin
                            if (~AESL_inst_folo.layer33_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer33_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer33_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer33_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer33_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer33_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0',");
                        end
                    end
                    6: begin //  for dep proc 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'
// for dep channel 'folo.layer5_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.layer5_out_blk_n data_FIFO} {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s_fu_156.layer5_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.layer5_out_blk_n) | (~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s_fu_156.layer5_out_blk_n)) begin
                            if (~AESL_inst_folo.layer5_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer5_out_U' written by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer5_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer5_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer5_out_U' read by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer5_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                6 : begin // for proc 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'
                    case(index2)
                    3: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'
// for dep channel 'folo.layer29_cpy2_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.layer29_cpy2_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.layer29_cpy2_blk_n)) begin
                            if (~AESL_inst_folo.layer29_cpy2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer29_cpy2_U' written by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer29_cpy2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer29_cpy2_U' read by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer29_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_empty_n & AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.ap_idle & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_empty_n & AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.ap_idle & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U' written by process 'folo.clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0',");
                        end
                    end
                    5: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'
// for dep channel 'folo.layer5_out_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.layer5_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.layer5_out_blk_n)) begin
                            if (~AESL_inst_folo.layer5_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer5_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer5_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer5_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer5_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer5_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin //  for dep proc 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'
// for dep channel 'folo.layer7_out_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.layer7_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.layer7_out_blk_n)) begin
                            if (~AESL_inst_folo.layer7_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer7_out_U' written by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer7_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer7_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer7_out_U' read by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer7_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_full_n & AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.ap_start & ~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_full_n & AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.ap_start & ~AESL_inst_folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U' read by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0',");
                        end
                    end
                    endcase
                end
                7 : begin // for proc 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'
                    case(index2)
                    6: begin //  for dep proc 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'
// for dep channel 'folo.layer7_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.layer7_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.layer7_out_blk_n)) begin
                            if (~AESL_inst_folo.layer7_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer7_out_U' written by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer7_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer7_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer7_out_U' read by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer7_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0_U' written by process 'folo.add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0',");
                        end
                    end
                    8: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'
// for dep channel 'folo.layer8_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.layer8_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.layer8_out_blk_n)) begin
                            if (~AESL_inst_folo.layer8_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer8_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer8_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer8_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer8_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer8_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0',");
                        end
                    end
                    endcase
                end
                8 : begin // for proc 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'
                    case(index2)
                    7: begin //  for dep proc 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'
// for dep channel 'folo.layer8_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config34_Pipeline_CopyMain_fu_52.layer8_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config34_Pipeline_CopyMain_fu_52.layer8_out_blk_n)) begin
                            if (~AESL_inst_folo.layer8_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer8_out_U' written by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer8_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer8_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer8_out_U' read by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer8_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U' written by process 'folo.relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0',");
                        end
                    end
                    9: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'
// for dep channel 'folo.layer34_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.layer34_out_blk_n data_FIFO} {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config34_Pipeline_CopyMain_fu_52.layer34_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.layer34_out_blk_n) | (~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config34_Pipeline_CopyMain_fu_52.layer34_out_blk_n)) begin
                            if (~AESL_inst_folo.layer34_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer34_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer34_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer34_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer34_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer34_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U' read by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0',");
                        end
                    end
                    endcase
                end
                9 : begin // for proc 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'
                    case(index2)
                    8: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'
// for dep channel 'folo.layer34_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.layer34_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.layer34_out_blk_n)) begin
                            if (~AESL_inst_folo.layer34_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer34_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer34_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer34_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer34_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer34_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0',");
                        end
                    end
                    10: begin //  for dep proc 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'
// for dep channel 'folo.layer9_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.layer9_out_blk_n data_FIFO} {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s_fu_156.layer9_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.layer9_out_blk_n) | (~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s_fu_156.layer9_out_blk_n)) begin
                            if (~AESL_inst_folo.layer9_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer9_out_U' written by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer9_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer9_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer9_out_U' read by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer9_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_full_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.ap_start & ~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_full_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.ap_start & ~AESL_inst_folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U' read by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0',");
                        end
                    end
                    endcase
                end
                10 : begin // for proc 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'
                    case(index2)
                    9: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'
// for dep channel 'folo.layer9_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.layer9_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.layer9_out_blk_n)) begin
                            if (~AESL_inst_folo.layer9_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer9_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer9_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer9_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer9_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer9_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0_U' written by process 'folo.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0',");
                        end
                    end
                    11: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'
// for dep channel 'folo.layer11_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.layer11_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.layer11_out_blk_n)) begin
                            if (~AESL_inst_folo.layer11_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer11_out_U' written by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer11_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer11_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer11_out_U' read by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer11_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U' read by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0',");
                        end
                    end
                    endcase
                end
                11 : begin // for proc 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'
                    case(index2)
                    10: begin //  for dep proc 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'
// for dep channel 'folo.layer11_out_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.layer11_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.layer11_out_blk_n)) begin
                            if (~AESL_inst_folo.layer11_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer11_out_U' written by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer11_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer11_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer11_out_U' read by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer11_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_empty_n & AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.ap_idle & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_empty_n & AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.ap_idle & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U' written by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0',");
                        end
                    end
                    12: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'
// for dep channel 'folo.layer30_cpy1_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.layer30_cpy1_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.layer30_cpy1_blk_n)) begin
                            if (~AESL_inst_folo.layer30_cpy1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer30_cpy1_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer30_cpy1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer30_cpy1_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0',");
                        end
                    end
                    14: begin //  for dep proc 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'
// for dep channel 'folo.layer30_cpy2_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.layer30_cpy2_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.layer30_cpy2_blk_n)) begin
                            if (~AESL_inst_folo.layer30_cpy2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer30_cpy2_U' written by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer30_cpy2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer30_cpy2_U' read by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U' read by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0',");
                        end
                    end
                    endcase
                end
                12 : begin // for proc 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'
                    case(index2)
                    11: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'
// for dep channel 'folo.layer30_cpy1_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadMain_fu_28.layer30_cpy1_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadMain_fu_28.layer30_cpy1_blk_n)) begin
                            if (~AESL_inst_folo.layer30_cpy1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer30_cpy1_U' written by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer30_cpy1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer30_cpy1_U' read by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bak_U' written by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0',");
                        end
                    end
                    13: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'
// for dep channel 'folo.layer35_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadTopWidth_fu_22.layer35_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadTopWidth_fu_22.layer35_out_blk_n)) begin
                            if (~AESL_inst_folo.layer35_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer35_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer35_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer35_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer35_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer35_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U' read by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0',");
                        end
                    end
                    endcase
                end
                13 : begin // for proc 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'
                    case(index2)
                    12: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'
// for dep channel 'folo.layer35_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.layer35_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.layer35_out_blk_n)) begin
                            if (~AESL_inst_folo.layer35_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer35_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer35_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer35_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer35_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer35_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0',");
                        end
                    end
                    14: begin //  for dep proc 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'
// for dep channel 'folo.layer12_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.layer12_out_blk_n data_FIFO} {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s_fu_208.layer12_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.layer12_out_blk_n) | (~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s_fu_208.layer12_out_blk_n)) begin
                            if (~AESL_inst_folo.layer12_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer12_out_U' written by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer12_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer12_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer12_out_U' read by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer12_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                14 : begin // for proc 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'
                    case(index2)
                    11: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'
// for dep channel 'folo.layer30_cpy2_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.layer30_cpy2_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.layer30_cpy2_blk_n)) begin
                            if (~AESL_inst_folo.layer30_cpy2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer30_cpy2_U' written by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer30_cpy2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer30_cpy2_U' read by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer30_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_empty_n & AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.ap_idle & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_empty_n & AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.ap_idle & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U' written by process 'folo.clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0',");
                        end
                    end
                    13: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'
// for dep channel 'folo.layer12_out_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.layer12_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.layer12_out_blk_n)) begin
                            if (~AESL_inst_folo.layer12_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer12_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer12_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer12_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer12_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer12_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    15: begin //  for dep proc 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'
// for dep channel 'folo.layer14_out_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.layer14_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.layer14_out_blk_n)) begin
                            if (~AESL_inst_folo.layer14_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer14_out_U' written by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer14_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer14_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer14_out_U' read by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer14_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_full_n & AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.ap_start & ~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.real_start & (trans_in_cnt_12 == trans_out_cnt_12) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_full_n & AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.ap_start & ~AESL_inst_folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0.real_start & (trans_in_cnt_12 == trans_out_cnt_12) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U' read by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0',");
                        end
                    end
                    endcase
                end
                15 : begin // for proc 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'
                    case(index2)
                    14: begin //  for dep proc 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'
// for dep channel 'folo.layer14_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.layer14_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.layer14_out_blk_n)) begin
                            if (~AESL_inst_folo.layer14_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer14_out_U' written by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer14_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer14_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer14_out_U' read by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer14_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0_U' written by process 'folo.add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0',");
                        end
                    end
                    16: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'
// for dep channel 'folo.layer15_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.layer15_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.layer15_out_blk_n)) begin
                            if (~AESL_inst_folo.layer15_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer15_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer15_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer15_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer15_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer15_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.real_start & (trans_in_cnt_13 == trans_out_cnt_13) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0.real_start & (trans_in_cnt_13 == trans_out_cnt_13) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0',");
                        end
                    end
                    endcase
                end
                16 : begin // for proc 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'
                    case(index2)
                    15: begin //  for dep proc 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'
// for dep channel 'folo.layer15_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config36_Pipeline_PadMain_fu_20.layer15_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config36_Pipeline_PadMain_fu_20.layer15_out_blk_n)) begin
                            if (~AESL_inst_folo.layer15_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer15_out_U' written by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer15_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer15_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer15_out_U' read by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer15_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bbk_U' written by process 'folo.relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0',");
                        end
                    end
                    17: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'
// for dep channel 'folo.layer36_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config36_Pipeline_PadMain_fu_20.layer36_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config36_Pipeline_PadMain_fu_20.layer36_out_blk_n)) begin
                            if (~AESL_inst_folo.layer36_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer36_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer36_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer36_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer36_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer36_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.real_start & (trans_in_cnt_14 == trans_out_cnt_14) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0.real_start & (trans_in_cnt_14 == trans_out_cnt_14) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U' read by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0',");
                        end
                    end
                    endcase
                end
                17 : begin // for proc 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'
                    case(index2)
                    16: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'
// for dep channel 'folo.layer36_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.layer36_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.layer36_out_blk_n)) begin
                            if (~AESL_inst_folo.layer36_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer36_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer36_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer36_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer36_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer36_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0',");
                        end
                    end
                    18: begin //  for dep proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'
// for dep channel 'folo.layer16_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.layer16_out_blk_n data_FIFO} {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s_fu_208.layer16_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.layer16_out_blk_n) | (~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s_fu_208.layer16_out_blk_n)) begin
                            if (~AESL_inst_folo.layer16_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer16_out_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer16_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer16_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer16_out_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer16_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_full_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.ap_start & ~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_full_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.ap_start & ~AESL_inst_folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0',");
                        end
                    end
                    endcase
                end
                18 : begin // for proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'
                    case(index2)
                    17: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'
// for dep channel 'folo.layer16_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.layer16_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.layer16_out_blk_n)) begin
                            if (~AESL_inst_folo.layer16_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer16_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer16_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer16_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer16_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer16_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0_U' written by process 'folo.conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0',");
                        end
                    end
                    19: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'
// for dep channel 'folo.layer18_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.layer18_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.layer18_out_blk_n)) begin
                            if (~AESL_inst_folo.layer18_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer18_out_U' written by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer18_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer18_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer18_out_U' read by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer18_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.real_start & (trans_in_cnt_16 == trans_out_cnt_16) & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0.real_start & (trans_in_cnt_16 == trans_out_cnt_16) & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U' read by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0',");
                        end
                    end
                    endcase
                end
                19 : begin // for proc 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'
                    case(index2)
                    18: begin //  for dep proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'
// for dep channel 'folo.layer18_out_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.layer18_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.layer18_out_blk_n)) begin
                            if (~AESL_inst_folo.layer18_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer18_out_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer18_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer18_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer18_out_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer18_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_empty_n & AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.ap_idle & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_empty_n & AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.ap_idle & ~AESL_inst_folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0',");
                        end
                    end
                    20: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'
// for dep channel 'folo.layer31_cpy1_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.layer31_cpy1_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.layer31_cpy1_blk_n)) begin
                            if (~AESL_inst_folo.layer31_cpy1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer31_cpy1_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer31_cpy1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer31_cpy1_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0',");
                        end
                    end
                    22: begin //  for dep proc 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'
// for dep channel 'folo.layer31_cpy2_U' info is :
// blk sig is {~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.layer31_cpy2_blk_n data_FIFO}
                        if ((~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.layer31_cpy2_blk_n)) begin
                            if (~AESL_inst_folo.layer31_cpy2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer31_cpy2_U' written by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer31_cpy2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer31_cpy2_U' read by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_full_n & AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.ap_start & ~AESL_inst_folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U' read by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0',");
                        end
                    end
                    endcase
                end
                20 : begin // for proc 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'
                    case(index2)
                    19: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'
// for dep channel 'folo.layer31_cpy1_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadMain_fu_28.layer31_cpy1_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadMain_fu_28.layer31_cpy1_blk_n)) begin
                            if (~AESL_inst_folo.layer31_cpy1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer31_cpy1_U' written by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer31_cpy1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer31_cpy1_U' read by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_empty_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.ap_idle & ~AESL_inst_folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bck_U' written by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0',");
                        end
                    end
                    21: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'
// for dep channel 'folo.layer37_out_U' info is :
// blk sig is {~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadTopWidth_fu_22.layer37_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadTopWidth_fu_22.layer37_out_blk_n)) begin
                            if (~AESL_inst_folo.layer37_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer37_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer37_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer37_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer37_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer37_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.real_start & (trans_in_cnt_18 == trans_out_cnt_18) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_full_n & AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.ap_start & ~AESL_inst_folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0.real_start & (trans_in_cnt_18 == trans_out_cnt_18) & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U' read by process 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0',");
                        end
                    end
                    endcase
                end
                21 : begin // for proc 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'
                    case(index2)
                    20: begin //  for dep proc 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'
// for dep channel 'folo.layer37_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.layer37_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.layer37_out_blk_n)) begin
                            if (~AESL_inst_folo.layer37_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer37_out_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer37_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer37_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer37_out_U' read by process 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer37_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_empty_n & AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.ap_idle & ~AESL_inst_folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U' written by process 'folo.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0',");
                        end
                    end
                    22: begin //  for dep proc 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'
// for dep channel 'folo.layer19_out_U' info is :
// blk sig is {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.layer19_out_blk_n data_FIFO} {~AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s_fu_260.layer19_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.layer19_out_blk_n) | (~AESL_inst_folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s_fu_260.layer19_out_blk_n)) begin
                            if (~AESL_inst_folo.layer19_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer19_out_U' written by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer19_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer19_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer19_out_U' read by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer19_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                22 : begin // for proc 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'
                    case(index2)
                    19: begin //  for dep proc 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'
// for dep channel 'folo.layer31_cpy2_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.layer31_cpy2_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.layer31_cpy2_blk_n)) begin
                            if (~AESL_inst_folo.layer31_cpy2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer31_cpy2_U' written by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer31_cpy2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer31_cpy2_U' read by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer31_cpy2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_empty_n & AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.ap_idle & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_empty_n & AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.ap_idle & ~AESL_inst_folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U' written by process 'folo.clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0',");
                        end
                    end
                    21: begin //  for dep proc 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'
// for dep channel 'folo.layer19_out_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.layer19_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.layer19_out_blk_n)) begin
                            if (~AESL_inst_folo.layer19_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer19_out_U' written by process 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer19_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer19_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer19_out_U' read by process 'folo.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer19_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    23: begin //  for dep proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'
// for dep channel 'folo.layer21_out_U' info is :
// blk sig is {~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.layer21_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.layer21_out_blk_n)) begin
                            if (~AESL_inst_folo.layer21_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer21_out_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer21_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer21_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer21_out_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer21_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_full_n & AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.ap_start & ~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.real_start & (trans_in_cnt_19 == trans_out_cnt_19) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_full_n & AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.ap_start & ~AESL_inst_folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0.real_start & (trans_in_cnt_19 == trans_out_cnt_19) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0',");
                        end
                    end
                    endcase
                end
                23 : begin // for proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'
                    case(index2)
                    22: begin //  for dep proc 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'
// for dep channel 'folo.layer21_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.layer21_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.layer21_out_blk_n)) begin
                            if (~AESL_inst_folo.layer21_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer21_out_U' written by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer21_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer21_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer21_out_U' read by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer21_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0_U' written by process 'folo.add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0',");
                        end
                    end
                    24: begin //  for dep proc 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'
// for dep channel 'folo.layer22_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.layer22_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.layer22_out_blk_n)) begin
                            if (~AESL_inst_folo.layer22_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer22_out_U' written by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer22_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer22_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer22_out_U' read by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer22_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.real_start & (trans_in_cnt_20 == trans_out_cnt_20) & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0.real_start & (trans_in_cnt_20 == trans_out_cnt_20) & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U' read by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0',");
                        end
                    end
                    endcase
                end
                24 : begin // for proc 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'
                    case(index2)
                    23: begin //  for dep proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'
// for dep channel 'folo.layer22_out_U' info is :
// blk sig is {~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.layer22_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.layer22_out_blk_n)) begin
                            if (~AESL_inst_folo.layer22_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer22_out_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer22_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer22_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer22_out_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer22_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_empty_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.ap_idle & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_empty_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.ap_idle & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0',");
                        end
                    end
                    25: begin //  for dep proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'
// for dep channel 'folo.layer23_out_U' info is :
// blk sig is {~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.layer23_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.layer23_out_blk_n)) begin
                            if (~AESL_inst_folo.layer23_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer23_out_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer23_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer23_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer23_out_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer23_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_full_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.ap_start & ~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.real_start & (trans_in_cnt_21 == trans_out_cnt_21) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_full_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.ap_start & ~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0.real_start & (trans_in_cnt_21 == trans_out_cnt_21) & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0',");
                        end
                    end
                    endcase
                end
                25 : begin // for proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'
                    case(index2)
                    24: begin //  for dep proc 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'
// for dep channel 'folo.layer23_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.layer23_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.layer23_out_blk_n)) begin
                            if (~AESL_inst_folo.layer23_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer23_out_U' written by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer23_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer23_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer23_out_U' read by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer23_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_empty_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.ap_idle & ~AESL_inst_folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0_U' written by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0',");
                        end
                    end
                    26: begin //  for dep proc 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'
// for dep channel 'folo.layer25_out_U' info is :
// blk sig is {~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.layer25_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.layer25_out_blk_n)) begin
                            if (~AESL_inst_folo.layer25_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer25_out_U' written by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer25_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer25_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer25_out_U' read by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer25_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.real_start & (trans_in_cnt_22 == trans_out_cnt_22) & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_full_n & AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.ap_start & ~AESL_inst_folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0.real_start & (trans_in_cnt_22 == trans_out_cnt_22) & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U' read by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0',");
                        end
                    end
                    endcase
                end
                26 : begin // for proc 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'
                    case(index2)
                    25: begin //  for dep proc 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'
// for dep channel 'folo.layer25_out_U' info is :
// blk sig is {~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.layer25_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.layer25_out_blk_n)) begin
                            if (~AESL_inst_folo.layer25_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer25_out_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer25_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer25_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer25_out_U' read by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer25_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_empty_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.ap_idle & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_empty_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.ap_idle & ~AESL_inst_folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0_U' written by process 'folo.relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0',");
                        end
                    end
                    27: begin //  for dep proc 'folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0'
// for dep channel 'folo.layer26_out_U' info is :
// blk sig is {~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.layer26_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.layer26_out_blk_n)) begin
                            if (~AESL_inst_folo.layer26_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer26_out_U' written by process 'folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer26_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer26_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer26_out_U' read by process 'folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer26_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_full_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.ap_start & ~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.real_start & (trans_in_cnt_23 == trans_out_cnt_23) & ~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_read} start_FIFO}
                        if ((~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_full_n & AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.ap_start & ~AESL_inst_folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0.real_start & (trans_in_cnt_23 == trans_out_cnt_23) & ~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_read)) begin
                            $display("//      Blocked by full output start propagation FIFO 'folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U' read by process 'folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0',");
                        end
                    end
                    endcase
                end
                27 : begin // for proc 'folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0'
                    case(index2)
                    26: begin //  for dep proc 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'
// for dep channel 'folo.layer26_out_U' info is :
// blk sig is {~AESL_inst_folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0.layer26_out_blk_n data_FIFO}
                        if ((~AESL_inst_folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0.layer26_out_blk_n)) begin
                            if (~AESL_inst_folo.layer26_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'folo.layer26_out_U' written by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer26_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_folo.layer26_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'folo.layer26_out_U' read by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0'");
                                $fdisplay(fp, "Dependence_Channel_path folo.layer26_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U' info is :
// blk sig is {{~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_empty_n & AESL_inst_folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0.ap_idle & ~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_write} start_FIFO}
                        if ((~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_empty_n & AESL_inst_folo.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0.ap_idle & ~AESL_inst_folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U.if_write)) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'folo.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0_U' written by process 'folo.pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0',");
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (dl_reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge dl_clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg && stop_report_path == 1'b0) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        @(negedge dl_clock);
                        @(negedge dl_clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg)) & ~(|(reported_proc & dl_in_vec))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
endmodule
