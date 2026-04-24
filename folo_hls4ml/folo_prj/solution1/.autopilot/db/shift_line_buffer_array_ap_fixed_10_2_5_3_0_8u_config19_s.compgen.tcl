# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler folo_shift_line_buffer_array_ap_fixed_10_2_5_3_0_8u_config19_s_p_ZZN4nnet25conv_2dRg6 BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 708 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 712 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 714 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 782 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 783 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


