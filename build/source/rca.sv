/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module rca #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire cin,
        output reg cout,
        output reg [(SIZE)-1:0] s
    );
    logic [31:0] R_2cfd607b_i;
    logic [31:0] RR_2cfd607b_i;
    logic [(SIZE)-1:0] M_fa_a;
    logic [(SIZE)-1:0] M_fa_b;
    logic [(SIZE)-1:0] M_fa_cin;
    logic [(SIZE)-1:0] M_fa_s;
    logic [(SIZE)-1:0] M_fa_cout;
    
    genvar idx_0_765039200;
    
    generate
        for (idx_0_765039200 = 0; idx_0_765039200 < SIZE; idx_0_765039200 = idx_0_765039200 + 1) begin: forLoop_idx_0_765039200
            fa fa (
                .a(M_fa_a[idx_0_765039200]),
                .b(M_fa_b[idx_0_765039200]),
                .cin(M_fa_cin[idx_0_765039200]),
                .s(M_fa_s[idx_0_765039200]),
                .cout(M_fa_cout[idx_0_765039200])
            );
        end
    endgenerate
    
    
    always @* begin
        M_fa_a = a;
        M_fa_b = b;
        for (RR_2cfd607b_i = 0; RR_2cfd607b_i < SIZE; RR_2cfd607b_i = RR_2cfd607b_i + 1) begin
      R_2cfd607b_i = (0) + RR_2cfd607b_i * (1);
            if (R_2cfd607b_i == 1'h0) begin
                M_fa_cin[R_2cfd607b_i] = cin;
            end else begin
                M_fa_cin[R_2cfd607b_i] = M_fa_cout[R_2cfd607b_i - 1'h1];
            end
        end
        s = M_fa_s;
        cout = M_fa_cout[SIZE - 1'h1];
    end
    
    
endmodule