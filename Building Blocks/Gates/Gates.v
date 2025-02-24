module and_gate(input [7:0] a, b, output [7:0] c);
    assign c = a & b;
endmodule

module or_gate(input [7:0] a, b, output [7:0] c);
    assign c = a | b;
endmodule

module xor_gate(input [7:0] a, b, output [7:0] c);
    assign c = a ^ b;
endmodule

module not_gate(input [7:0] a, output [7:0] b);
    assign b = ~a;
endmodule

module nand_gate(input [7:0] a, b, output [7:0] c);
    wire [7:0] result;
    
    and_gate ag (.a(a), .b(b), .c(result));  
    not_gate ng (.a(result), .b(c));         
endmodule

module nor_gate(input [7:0] a, b, output [7:0] c);
    wire [7:0] result;

    or_gate og (.a(a), .b(b), .c(result));
    not_gate ng (.a(result), .b(c));
endmodule