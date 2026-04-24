# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler folo_shift_line_buffer_array_ap_fixed_10_2_5_3_0_6u_config16_s_p_ZZN4nnet25conv_2dFfa BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 502 \
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
    id 503 \
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
    id 504 \
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
    id 505 \
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
    id 506 \
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
    id 507 \
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
    id 508 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244_o_ap_vld { O 1 bit } } \
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


