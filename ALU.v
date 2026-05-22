module alu(
  input  [4:0] a, b,
  input  [3:0] op,
  output reg [9:0] result
);
localparam add           = 4'b0000,
           sub           = 4'b0001,
           mul           = 4'b0010,
           div           = 4'b0011,
           incre         = 4'b0100,
           decre         = 4'b0101,
           AND           = 4'b0110,
           OR            = 4'b0111,
           NOT           = 4'b1000,
           XOR           = 4'b1001,
           bitshift_left = 4'b1010,
           bitshift_right= 4'b1011;
initial result = 0;
always @(*) begin
  case(op)
    add:           result = a + b;
    sub:           result = a - b;
    mul:           result = a * b;
    div:           result = a / b;
    incre:         result = a + 1;
    decre:         result = a - 1;
    AND:           result = a & b;
    OR:            result = a | b;
    NOT:           result = ~a;
    XOR:           result = a ^ b;
    bitshift_left: result = a << b;
    bitshift_right:result = a >> b;
  endcase
end
endmodule
