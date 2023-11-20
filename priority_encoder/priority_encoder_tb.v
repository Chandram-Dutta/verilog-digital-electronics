`include "priority_encoder.v"

module priority_encoder_tb ();
    reg en;
    wire [2:0]i;
    reg [7:0]u;

    priority_encoder uut(en,i,u);

    initial begin
        $monitor("en=%b i=%b u=%b", en,i,u);
        en = 1; u = 128; #5;
        en = 1; u = 64; #5;
        en = 1; u = 32; #5;
        en = 1; u = 16; #5;
        en = 1; u = 8; #5;
        en = 1; u = 4; #5;
        en = 1; u = 2; #5;
        en = 1; u = 1; #5;
        en = 0; u = 8'bx; #5;
        $finish;
    end

    
endmodule