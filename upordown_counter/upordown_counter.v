module upordown_counter (
    clk,reset,upordown,count
);
    
    input clk,reset,upordown;
    output [3:0]count;
    reg [3:0]count = 0;

    always @(posedge(clk) or posedge(count)) begin
        if (reset == 1)
            count <= 0;
        else if(upordown == 1)
            if(count == 15)
                count <= 0;
            else 
                count = count + 1;
        else 
            if(count == 0)
                count <= 15;
            else
            count = count - 1;
    end

    initial begin
        $dumpfile ("upordown_counter.vcd");
        $dumpvars (0, upordown_counter);
        #1;
    end

endmodule