
module alub (
	input [31:0] A,
	input [31:0] B,
	input [2:0] sel,
	output reg [31:0] R,
	output reg Z
	);


	always @ (*) 
	
	begin
		case(sel)
		3'b001: begin
		R = A + B;
		end
		3'b010: begin
		R = A & B;
		end
		3'b011: begin
		R = A | B;
		end
		3'b100: begin
		R = A * B;
		end
		3'b101: begin
		R = A - B;
		end
		3'b110: begin
		R = A<B?1:0;
		end
		default: R = 32'd0;
		endcase
		
		Z = (R == 32'd0);	
		
	end
		
	
endmodule
