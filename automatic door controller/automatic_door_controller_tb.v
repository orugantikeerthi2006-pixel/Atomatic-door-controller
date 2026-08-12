`timescale 1ns/1ps

module automatic_door_controller_tb;

    reg clk;
    reg reset;
    reg person_detected;

    wire door_open;

    // Connect the design
    automatic_door_controller uut (
        .clk(clk),
        .reset(reset),
        .person_detected(person_detected),
        .door_open(door_open)
    );

    // Generate clock
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("output.vcd");
        $dumpvars(0, automatic_door_controller_tb);

        // Initial values
        clk = 0;
        reset = 1;
        person_detected = 0;

        #10;

        // Release reset
        reset = 0;

        // Person detected
        person_detected = 1;
        #10;

        // Person leaves
        person_detected = 0;
        #10;

        // Person detected again
        person_detected = 1;
        #10;

        // No person
        person_detected = 0;
        #10;

        $finish;

    end

endmodule