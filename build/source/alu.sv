/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    logic [31:0] R_282f2612_i;
    logic [31:0] RR_282f2612_i;
    logic [31:0] M_mux_4_s0;
    logic [31:0] M_mux_4_s1;
    logic [31:0][3:0] M_mux_4_in;
    logic [31:0] M_mux_4_out;
    
    genvar idx_0_330267098;
    
    generate
        for (idx_0_330267098 = 0; idx_0_330267098 < 32; idx_0_330267098 = idx_0_330267098 + 1) begin: forLoop_idx_0_330267098
            mux_4 mux_4 (
                .s0(M_mux_4_s0[idx_0_330267098]),
                .s1(M_mux_4_s1[idx_0_330267098]),
                .in(M_mux_4_in[idx_0_330267098]),
                .out(M_mux_4_out[idx_0_330267098])
            );
        end
    endgenerate
    
    
    logic [31:0] M_mux_4_1_s0;
    logic [31:0] M_mux_4_1_s1;
    logic [31:0][3:0] M_mux_4_1_in;
    logic [31:0] M_mux_4_1_out;
    
    genvar idx_0_1004247577;
    
    generate
        for (idx_0_1004247577 = 0; idx_0_1004247577 < 32; idx_0_1004247577 = idx_0_1004247577 + 1) begin: forLoop_idx_0_1004247577
            mux_4 mux_4_1 (
                .s0(M_mux_4_1_s0[idx_0_1004247577]),
                .s1(M_mux_4_1_s1[idx_0_1004247577]),
                .in(M_mux_4_1_in[idx_0_1004247577]),
                .out(M_mux_4_1_out[idx_0_1004247577])
            );
        end
    endgenerate
    
    
    localparam _MP_SIZE_637302318 = 6'h20;
    logic [31:0] M_adder_a;
    logic [31:0] M_adder_b;
    logic [5:0] M_adder_alufn_signal;
    logic [31:0] M_adder_out;
    logic M_adder_z;
    logic M_adder_v;
    logic M_adder_n;
    
    adder #(
        .SIZE(_MP_SIZE_637302318)
    ) adder (
        .a(M_adder_a),
        .b(M_adder_b),
        .alufn_signal(M_adder_alufn_signal),
        .out(M_adder_out),
        .z(M_adder_z),
        .v(M_adder_v),
        .n(M_adder_n)
    );
    
    
    logic M_compare_z;
    logic M_compare_v;
    logic M_compare_n;
    logic [5:0] M_compare_alufn;
    logic M_compare_cmp;
    
    compare compare (
        .z(M_compare_z),
        .v(M_compare_v),
        .n(M_compare_n),
        .alufn(M_compare_alufn),
        .cmp(M_compare_cmp)
    );
    
    
    localparam _MP_SIZE_1500294727 = 6'h20;
    logic [31:0] M_boolean_a;
    logic [31:0] M_boolean_b;
    logic [5:0] M_boolean_alufn_signal;
    logic [31:0] M_boolean_bool;
    
    boolean #(
        .SIZE(_MP_SIZE_1500294727)
    ) boolean (
        .a(M_boolean_a),
        .b(M_boolean_b),
        .alufn_signal(M_boolean_alufn_signal),
        .bool(M_boolean_bool)
    );
    
    
    logic [31:0] M_shifter_a;
    logic [4:0] M_shifter_b;
    logic [5:0] M_shifter_alufn;
    logic [31:0] M_shifter_shift;
    
    shifter shifter (
        .a(M_shifter_a),
        .b(M_shifter_b),
        .alufn(M_shifter_alufn),
        .shift(M_shifter_shift)
    );
    
    
    logic [31:0] M_multiplier_a;
    logic [31:0] M_multiplier_b;
    logic [31:0] M_multiplier_mul;
    
    multiplier multiplier (
        .a(M_multiplier_a),
        .b(M_multiplier_b),
        .mul(M_multiplier_mul)
    );
    
    
    logic [31:0] M_divider_a;
    logic [31:0] M_divider_b;
    logic [31:0] M_divider_out;
    
    divider divider (
        .a(M_divider_a),
        .b(M_divider_b),
        .out(M_divider_out)
    );
    
    
    logic [31:0] M_modulo_a;
    logic [31:0] M_modulo_b;
    logic [31:0] M_modulo_out;
    
    modulo modulo (
        .a(M_modulo_a),
        .b(M_modulo_b),
        .out(M_modulo_out)
    );
    
    
    logic [31:0] cmp_extended;
    always @* begin
        M_adder_a = a;
        M_adder_b = b;
        M_adder_alufn_signal = alufn;
        z = M_adder_z;
        v = M_adder_v;
        n = M_adder_n;
        M_multiplier_a = a;
        M_multiplier_b = b;
        M_boolean_a = a;
        M_boolean_b = b;
        M_boolean_alufn_signal = alufn;
        M_shifter_a = a;
        M_shifter_b = b;
        M_shifter_alufn = alufn;
        M_compare_z = M_adder_z;
        M_compare_v = M_adder_v;
        M_compare_n = M_adder_n;
        M_compare_alufn = alufn;
        cmp_extended = {31'h0, M_compare_cmp};
        M_divider_a = a;
        M_divider_b = b;
        M_modulo_a = a;
        M_modulo_b = b;
        for (RR_282f2612_i = 0; RR_282f2612_i < 6'h20; RR_282f2612_i = RR_282f2612_i + 1) begin
      R_282f2612_i = (0) + RR_282f2612_i * (1);
            M_mux_4_1_s0[R_282f2612_i] = alufn[1'h1];
            M_mux_4_1_s1[R_282f2612_i] = alufn[2'h2];
            M_mux_4_1_in[R_282f2612_i][1'h0] = M_adder_out[R_282f2612_i];
            M_mux_4_1_in[R_282f2612_i][1'h1] = M_multiplier_mul[R_282f2612_i];
            M_mux_4_1_in[R_282f2612_i][2'h2] = M_divider_out[R_282f2612_i];
            M_mux_4_1_in[R_282f2612_i][2'h3] = M_modulo_out[R_282f2612_i];
            M_mux_4_in[R_282f2612_i][1'h0] = M_mux_4_1_out[R_282f2612_i];
            M_mux_4_in[R_282f2612_i][1'h1] = M_boolean_bool[R_282f2612_i];
            M_mux_4_in[R_282f2612_i][2'h2] = M_shifter_shift[R_282f2612_i];
            M_mux_4_in[R_282f2612_i][2'h3] = cmp_extended[R_282f2612_i];
            M_mux_4_s0[R_282f2612_i] = alufn[3'h4];
            M_mux_4_s1[R_282f2612_i] = alufn[3'h5];
            out[R_282f2612_i] = M_mux_4_out[R_282f2612_i];
        end
    end
    
    
endmodule