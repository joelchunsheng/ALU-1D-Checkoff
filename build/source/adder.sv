/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module adder #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire [5:0] alufn_signal,
        output reg [(SIZE)-1:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    localparam _MP_SIZE_670573982 = 6'h20;
    logic [31:0] M_rca_a;
    logic [31:0] M_rca_b;
    logic M_rca_cin;
    logic M_rca_cout;
    logic [31:0] M_rca_s;
    
    rca #(
        .SIZE(_MP_SIZE_670573982)
    ) rca (
        .a(M_rca_a),
        .b(M_rca_b),
        .cin(M_rca_cin),
        .cout(M_rca_cout),
        .s(M_rca_s)
    );
    
    
    logic [(SIZE)-1:0] xb;
    always @* begin
        out = 1'h0;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
        M_rca_a = a;
        xb = b ^ {6'h20{alufn_signal[1'h0]}};
        M_rca_b = xb;
        M_rca_cin = alufn_signal[1'h0];
        out = M_rca_s;
        z = ~(|M_rca_s);
        v = (a[SIZE - 1'h1] & xb[SIZE - 1'h1] & ~M_rca_s[SIZE - 1'h1]) | (~a[SIZE - 1'h1] & ~xb[SIZE - 1'h1] & M_rca_s[SIZE - 1'h1]);
        n = M_rca_s[SIZE - 1'h1];
    end
    
    
endmodule