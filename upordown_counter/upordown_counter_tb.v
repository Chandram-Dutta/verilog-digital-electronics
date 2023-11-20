`include "upordown_counter.v"

module upordown_counter_tb ();

    reg clk,reset,upordown;
    wire [3:0]count;

    upordown_counter uut(clk,reset,upordown,count);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 0;
        upordown = 0;
        #300;
        upordown = 1;
        #300;      
        reset = 1;
        upordown = 1;
        #100;
        reset=0;
        $finish;
    end

endmodule