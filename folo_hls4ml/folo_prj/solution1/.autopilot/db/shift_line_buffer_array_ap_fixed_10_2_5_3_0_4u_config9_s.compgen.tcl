# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler folo_shift_line_buffer_array_ap_fixed_10_2_5_3_0_4u_config9_s_p_ZZN4nnet25conv_2d_lbW BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 179 \
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
    id 180 \
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
    id 181 \
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
    id 182 \
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
    id 183 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55 { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192 { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49_i { I 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49_o { O 10 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200_i { I 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200_o { O 10 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200_o_ap_vld { O 1 bit } } \
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


