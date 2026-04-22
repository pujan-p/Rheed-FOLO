# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config9_s_p_ZZN4nnet26conv_2d_ocq BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 171 \
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
    id 172 \
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
    id 173 \
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
    id 174 \
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
    id 175 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_207 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_207 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_207_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_207_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_207_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_203 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_203 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_203 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_203_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_208 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_208 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_208_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_208_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_208_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_204 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_204 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_204 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_204_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_209 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_209 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_209_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_209_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_209_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_205 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_205 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_205 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_205_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_210 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_210 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_210_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_210_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_210_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_206 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_206 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_206 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_206_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_219 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_219 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_219_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_219_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_219_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_215 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_215 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_215 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_215_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_220 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_220 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_220_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_220_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_220_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_216 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_216 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_216 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_216_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_221 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_221 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_221_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_221_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_221_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_217 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_217 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_217 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_217_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_222 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_222 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_222_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_222_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_222_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_218 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_218 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_218 { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_218_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_i { I 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o { O 12 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_201 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_201 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_201_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_201_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_201_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_202 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_202 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_202_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_202_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_202_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_211 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_211 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_211_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_211_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_211_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_212 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_212 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_212_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_212_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_212_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_213 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_213 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_213_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_213_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_213_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_214 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_214 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_214_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_214_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_214_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_223 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_223 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_223_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_223_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_223_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_224 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_224 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_224_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_224_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_224_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_225 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_225 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_225_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_225_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_225_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_226 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_226 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_226_i { I 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_226_o { O 12 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_226_o_ap_vld { O 1 bit } } \
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


