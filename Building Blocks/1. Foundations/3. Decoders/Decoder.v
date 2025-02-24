// 1:2 Decoder
module decoder_one(
    input wire a, 
    output wire [1:0] out
    
);
    assign out = a ? 2'b10 : 2'b01;
endmodule

// 2:4 Decoder
module decoder_two(
    input wire [1:0] a,
    output wire [3:0] out
);
    assign out = (a == 2'b00) ? 4'b0001 :
                 (a == 2'b01) ? 4'b0010 :
                 (a == 2'b10) ? 4'b0100 : 4'b1000; 
endmodule

// 3:8 Decoder 
module decoder_three(
    input wire [2:0] a,
    output wire [7:0] out
);
    assign out = (a == 3'b000) ? 8'b00000001 :
                 (a == 3'b001) ? 8'b00000010 :
                 (a == 3'b010) ? 8'b00000100 :
                 (a == 3'b011) ? 8'b00001000 :
                 (a == 3'b100) ? 8'b00010000 :
                 (a == 3'b101) ? 8'b00100000 :
                 (a == 3'b110) ? 8'b01000000 : 8'b10000000;
endmodule

// 3:8 Decoder with the enable signal
module enabled_decoder_three(
    input wire [2:0] a,
    input wire enabled,
    output wire [7:0] out
);
    assign out = enabled ? ((a == 3'b000) ? 8'b00000001 :
                            (a == 3'b001) ? 8'b00000010 :
                            (a == 3'b010) ? 8'b00000100 :
                            (a == 3'b011) ? 8'b00001000 :
                            (a == 3'b100) ? 8'b00010000 :
                            (a == 3'b101) ? 8'b00100000 :
                            (a == 3'b110) ? 8'b01000000 : 8'b10000000
                            ) : 8'b00000000;
endmodule