/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu_test_rom_expected_result (
        input wire [4:0] addr,
        output reg [31:0] data
    );
    logic [31:0] result;
    always @* begin
        
        case (addr)
            1'h0: begin
                result = 32'h23;
            end
            1'h1: begin
                result = -33'sh2;
            end
            2'h2: begin
                result = 32'h20;
            end
            2'h3: begin
                result = 32'h5;
            end
            3'h4: begin
                result = -32'sh5;
            end
            3'h5: begin
                result = -32'sh7fffffff;
            end
            3'h6: begin
                result = 32'h12c;
            end
            3'h7: begin
                result = 32'h0;
            end
            4'h8: begin
                result = 32'h107a4000;
            end
            4'h9: begin
                result = 32'h0;
            end
            4'ha: begin
                result = 32'h0;
            end
            4'hb: begin
                result = 32'h1;
            end
            4'hc: begin
                result = 32'hffffffff;
            end
            4'hd: begin
                result = 32'hf;
            end
            4'he: begin
                result = 32'h5b;
            end
            4'hf: begin
                result = 32'h7ffff9de;
            end
            5'h10: begin
                result = 32'h0;
            end
            5'h11: begin
                result = 32'h0;
            end
            5'h12: begin
                result = 32'h5;
            end
            5'h13: begin
                result = 32'ha;
            end
            5'h14: begin
                result = 32'h5b;
            end
            5'h15: begin
                result = 32'h80000000;
            end
            5'h16: begin
                result = 32'h2;
            end
            5'h17: begin
                result = 32'h5b;
            end
            5'h18: begin
                result = 32'h1;
            end
            5'h19: begin
                result = 32'hffffffff;
            end
            5'h1a: begin
                result = 32'h0;
            end
            5'h1b: begin
                result = 32'h1;
            end
            5'h1c: begin
                result = 32'h0;
            end
            5'h1d: begin
                result = 32'h1;
            end
            5'h1e: begin
                result = 32'h0;
            end
            default: begin
                result = 32'h0;
            end
        endcase
        data = result;
    end
    
    
endmodule