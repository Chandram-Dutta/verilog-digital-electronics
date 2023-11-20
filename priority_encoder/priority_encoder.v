module priority_encoder (
    input en, output [2:0]i, input [7:0]u
);

    assign i[2] = u[4] | u[5] | u[6] | u[7] & en;
    assign i[1] = u[2] | u[3] | u[6] | u[7] & en;
    assign i[0] = u[1] | u[3] | u[5] | u[7] & en;

    initial begin
        $dumpfile ("priority_encoder.vcd");
        $dumpvars (0, priority_encoder);
        #1;
    end
endmodule