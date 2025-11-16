// Instruction Memory:

module instr_mem(instruction, instr_address);
	output logic [31:0] instruction;
	input logic [31:0] instr_address;

// Memory:
logic [7:0] memory [27:0];

// Instructions:
initial begin


// addi x9, x0, 9
memory[0] = 8'b10010011;
memory[1] = 8'b00000100;
memory[2] = 8'b10010000;
memory[3] = 8'b00000000;

// addi x5, x0, 5
memory[4] = 8'b10010011;
memory[5] = 8'b00000010;
memory[6] = 8'b01010000;
memory[7] = 8'b00000000;

// sw x5, -4(x9)
memory[8]  = 8'b00100011;
memory[9]  = 8'b10101110;
memory[10] = 8'b01010100;
memory[11] = 8'b11111110;

// lw x6, -4(x9)
memory[12] = 8'b00000011;
memory[13] = 8'b10100011;
memory[14] = 8'b11000100;
memory[15] = 8'b11111111;

// sw x6, 8(x9)
memory[16] = 8'b00100011;
memory[17] = 8'b10100100;
memory[18] = 8'b01100100;
memory[19] = 8'b00000000;

// or x4, x5, x6
memory[20] = 8'b00110011;
memory[21] = 8'b11100010;
memory[22] = 8'b01100010;
memory[23] = 8'b00000000;

// beq x4, x4, L1
memory[24] = 8'b11100011;
memory[25] = 8'b00001010;
memory[26] = 8'b01000010;
memory[27] = 8'b11111110;

end

// Fetching instruction from instruction memory:
assign instruction = {memory[instr_address+3], memory[instr_address+2], memory[instr_address+1], memory[instr_address+0]};

endmodule