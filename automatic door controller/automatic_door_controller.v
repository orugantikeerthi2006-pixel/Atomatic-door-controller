module automatic_door_controller (
    input clk,
    input reset,
    input person_detected,
    output reg door_open
);

    always @(posedge clk) begin

        if (reset)
            door_open <= 1'b0;

        else if (person_detected)
            door_open <= 1'b1;

        else
            door_open <= 1'b0;

    end

endmodule