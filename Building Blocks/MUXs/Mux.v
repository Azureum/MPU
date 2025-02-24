// planning to make an 8-bit cpu, and I realized that everything I've been doing is working with 1 bit, so i plan to change everything and scale everything up, the wires are now 8-bit wide.

// 2:1 Multiplexer
module mux_two( // was advised to do it like this an I definitely agree, it looks so much better doing it like this rather than on singular line.
    input wire [7:0] a, b, 
    input wire s, 
    output wire [7:0] out
    );
    assign out = s ? b : a;
endmodule

// 4:1 multiplexer
module mux_four(
    input wire [7:0] a, b, c, d, 
    input wire [1:0] s, 
    output wire [7:0] out
);
    assign out = (s == 2'b00) ? a :
                 (s == 2'b01) ? b :
                 (s == 2'b10) ? c :
                 d;
endmodule

// 8:1 Multiplexer
module mux_eight(
    input wire [7:0]a, b, c, d, e, f, g, h, 
    input wire [2:0] s, 
    output wire [7:0] out
);
    assign out = (s == 3'b000) ? a : 
                 (s == 3'b001) ? b :
                 (s == 3'b010) ? c :
                 (s == 3'b011) ? d :
                 (s == 3'b100) ? e :
                 (s == 3'b101) ? f :
                 (s == 3'b110) ? g:
                 h;
endmodule


