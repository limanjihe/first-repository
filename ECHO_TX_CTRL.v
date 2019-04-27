'timescale 1ns/1ps

module echo_tx_ctrl (
    input wire  sys_clk    ,
    input wire  sys_rst    ,
    input wire [63:0]  echo_tx_data   ,
    input wire         echo_tx_en     ,
    output wire [63:0]  srio_tx_data    ,
    output wire         srio_tx_en    
);

    always@(posedge sys_clk)
        if(sys_rst) begin
            echo_tx_data_r0  <=  64'b0  ;
            echo_tx_en_r0    <=  1'b0   ;
        end
        else begin
            echo_tx_data_r0  <=   echo_tx_data  ;
            echo_tx_en_r0    <=   echo_tx_en    ;
        end
    
endmoudle
