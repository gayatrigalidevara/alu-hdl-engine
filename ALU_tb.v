module tb_alu;
  reg  [4:0] a, b;
  reg  [3:0] op;
  wire [9:0] result;
  alu uut(a, b, op, result);
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
  initial begin
    a = 5'd5; b = 5'd4;
    op = add;           #10;   // result = 9
    op = sub;           #10;   // result = 1
    op = mul;           #10;   // result = 20
    op = div;           #10;   // result = 1
    op = incre;         #10;   // result = 6
    op = decre;         #10;   // result = 4
    op = AND;           #10;   // result = 4
    op = OR;            #10;   // result = 5
    op = NOT;           #10;   // result = ~5
    op = XOR;           #10;   // result = 1
    op = bitshift_left; #10;   // result = 5 << 4 = 80
    op = bitshift_right;#10;   // result = 5 >> 4 = 0
    $finish;
  end
endmodule
