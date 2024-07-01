`timescale 1ns/10ps
module MAC (
    clock,
    reset,
    a,
    b,
    c,
    a_out,
    b_out,
    c_out,
    result,
    done
);

input                       clock, reset;
input           [  3:0 ]    a, b;
input           [  7:0 ]    c;

output reg      [  3:0 ]    a_out, b_out;
output reg      [  7:0 ]    c_out;
output reg      [  8:0 ]    result;
output reg                  done;

// Implement your HDL here
wire [8:0] result_comb;
assign result_comb = a * b + c;

always@(posedge clock or posedge reset)begin
    if(reset)begin
        a_out <= 'b0;
        b_out <= 'b0;
        c_out <= 'b0;
        result <= 'b0;
        done <= 'b0;
    end
    else begin
        result <= result_comb;
    end
end





endmodule
