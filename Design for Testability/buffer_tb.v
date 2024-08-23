`timescale 1ns/1ns
module buffer_tb();
reg a;
wire b;
buffer cut (b,a);
initial begin;
$dumpfile("trans.vcd");
$dumpvars(0, buffer_tb);
$monitor("at time: %t - > a = %b & w = %b", $time , a, b);
a = 0;
#3
a = 1;
#1
$finish;
end
endmodule