module and_gate(input a, b, output c);
    assign c = a & b;
endmodule

module or_gate(input a, b, output c);
    assign c = a | b;
endmodule

module xor_gate(input a, b, output c);
    assign c = a ^ b;
endmodule

module not_gate(input a, output b);
    assign b = ~a;
endmodule

module nand_gate(input a, b, output c);
    wire result;
    
    and_gate ag (.a(a), .b(b), .c(result));  
    not_gate ng (.a(result), .b(c));         
endmodule

module nor_gate(input a, b, output c);
    wire result;

    or_gate og (.a(a), .b(b), .c(result));
    not_gate ng (.a(result), .b(c));
endmodule
