module silly(input logic a,b,cin, output logic sum,cout);
   
  assign sum = a ^ b ^ cin;
  assign cout = a & b | a & cin | b & cin;
   
endmodule

module rippleCarry(input logic [3:0] a,b, input logic c, output logic cout, output logic [3:0] sum);

logic [2:0] int_cout;
silly fa1(.a(a[0]), .b(b[0]), .cin(c), .sum(sum[0]),.cout(int_cout[0]));
silly fa2(.a(a[1]), .b(b[1]), .cin(int_cout[0]), .sum(sum[1]),.cout(int_cout[1]));
silly fa3(.a(a[2]), .b(b[2]), .cin(int_cout[1]), .sum(sum[2]),.cout(int_cout[2]));
silly fa4(.a(a[3]), .b(b[3]), .cin(int_cout[2]), .sum(sum[3]),.cout(cout));

endmodule