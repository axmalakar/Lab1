`timescale 1ns / 1ps
module tb ();

   logic [3:0] 	a;
   logic [3:0] 	b;
   logic 		cin;
   logic		cout;
   logic [3:0] 	sum;
   logic [3:0] 	sum_correct;

   logic        clk;
   logic [31:0] errors;
   logic [31:0] vectornum;   

  
   
  // instantiate device under test
   rippleCarry dut (.a(a), .b(b), .c(cin), .sum(sum), .cout(cout));
 ////////////////////////////////////////////////////////////////////
   // 20 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

	assign sum_correct = a + b + cin;
	integer handle3;
	integer desc3;
	integer i;

	initial 
	begin
	handle3 = $fopen("rca.out");
	desc3 = handle3;
	#15000 $finish;
	end

	initial 
	begin
	for (i=0; i < 150; i=i+1)
	begin
	// Put vectors before beginning of clk
	@(posedge clk)
	begin
	a = $random;
	b = $random;
	cin = $random;
	end

	@(negedge clk)
	begin
		vectornum = vectornum + 1;
		/* if(sum != sum_correct)
			begin
				errors = errors + 1;
				$display("Error: %h %h || %h = %h", a,b,sum,sum_correct);
			end 
			*/
		$fdisplay(desc3, "%b %b %b || %b | %b | %b", a, b ,cin, sum, sum_correct, (sum == sum_correct));
	end
	end // @(negedge clk)
	//$display("%d tests completed with %d errors", vectornum, errors);
	//#0 $finsh;
	end


 
   
endmodule