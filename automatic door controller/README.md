# Automatic Door Controller

## Description

This project implements a simple Automatic Door Controller using Verilog HDL.

The door opens when a person is detected and closes when no person is detected.

## Working

- If `person_detected = 1`, the door opens.
- If `person_detected = 0`, the door closes.
- `reset = 1` closes the door and resets the system.

## Inputs

| Input | Description |
|------|-------------|
| `clk` | Clock signal |
| `reset` | Reset signal |
| `person_detected` | Indicates whether a person is detected |

## Output

| Output | Description |
|------|-------------|
| `door_open` | 1 = Door Open, 0 = Door Closed |

## Files

- `automatic_door_controller.v` - Main Verilog code
- `automatic_door_controller_tb.v` - Testbench
- `output.vcd` - Simulation waveform
- `README.md` - Project documentation

## Truth Table

| Person Detected | Door |
|-----------------|------|
| 0 | Closed |
| 1 | Open |

## How to Run

Compile the Verilog files:

    iverilog -o door_sim automatic_door_controller.v automatic_door_controller_tb.v

Run the simulation:

    vvp door_sim

Open the waveform:

    gtkwave output.vcd

## Expected Result

When a person is detected, the door opens.

When no person is detected, the door closes.

## Conclusion

The Automatic Door Controller successfully controls the door based on the presence of a person.