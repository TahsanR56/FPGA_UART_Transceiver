`timescale 1ns / 1ps

module baud_gen #(
    parameter integer CLK_FREQ_HZ = 50_000_000,
    parameter integer BAUD_RATE   = 115200     
)(
    input  wire clk,
    input  wire reset,
    output reg  baud_tick
);

    localparam integer BAUD_DIV = CLK_FREQ_HZ / BAUD_RATE;

    localparam integer COUNTER_WIDTH = $clog2(BAUD_DIV);

    reg [COUNTER_WIDTH-1:0] counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter   <= 0;
            baud_tick <= 1'b0;
        end else begin
            if (counter == BAUD_DIV - 1) begin
                counter   <= 0;
                baud_tick <= 1'b1; 
            end else begin
                counter   <= counter + 1'b1;
                baud_tick <= 1'b0;
            end
        end
    end

endmodule
