`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 12:31:41
// Design Name: 
// Module Name: mux_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_tb();
wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;
multiplexer mux(a,b,c,d,s0,s1,out);
initial
begin
$display("a:%0d,b:%0d,c:%0d,d:%0d,",a,b,c,d);
$monitor("At time = %t,s0:%0d,s1:%0d", $time,s0,s1);
a=1'b0; b=1'b1; c=1'b0; d=1'b1;
s0=1'b0; s1=1'b0;
#10
s0=1'b0; s1=1'b1;
#10
s0=1'b1; s1=1'b0;
#10
s0=1'b1; s1=1'b1;
end

endmodule
