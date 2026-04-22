# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config5_s_p_ZZN4nnet26conv_2d_fYi BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 58 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_233 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_233 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_233_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_233_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_233_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_229 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_229 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_229 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_229_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_234 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_234 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_234_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_234_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_234_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_230 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_230 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_230 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_230_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_235 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_235 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_235_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_235_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_235_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_231 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_231 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_231 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_231_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_236 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_236 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_236_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_236_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_236_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_232 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_232 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_232 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_232_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_245 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_245 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_245_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_245_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_245_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_241 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_241 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_241 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_241_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_246 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_246 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_246_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_246_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_246_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_242 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_242 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_242 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_242_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_247 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_247 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_247_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_247_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_247_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_243 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_243 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_243 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_243_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_248 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_248 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_248_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_248_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_248_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_244 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_244 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_244 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_244_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_227 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_227 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_227_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_227_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_227_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_228 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_228 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_228_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_228_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_228_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_237 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_237 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_237_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_237_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_237_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_238 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_238 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_238_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_238_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_238_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_239 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_239 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_239_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_239_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_239_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_240 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_240 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_240_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_240_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_240_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_249 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_249 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_249_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_249_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_249_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_250 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_250 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_250_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_250_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_250_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_251 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_251 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_251_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_251_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_251_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_252 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_252 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_252_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_252_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_252_o_ap_vld { O 1 bit } } \
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



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


