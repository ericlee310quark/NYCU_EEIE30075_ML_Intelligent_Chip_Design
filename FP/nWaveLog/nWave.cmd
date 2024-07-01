wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb}
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvOpenFile -win $_nWave1 {/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_1"
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_3"
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_1"
wvGetSignalSetScope -win $_nWave1 "/SystemC"
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_1"
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_0"
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/controller"
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/ack_tx} \
{/SystemC/controller/clk} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/ack_tx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvExpandBus -win $_nWave1 {("G2" 8)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 9
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetCursor -win $_nWave1 85385.543591 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 90078.866624
wvSetCursor -win $_nWave1 95513.240661
wvSetCursor -win $_nWave1 101112.292700
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetCursor -win $_nWave1 37464.245259 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 33841.329234
wvSetCursor -win $_nWave1 42486.924294
wvSetCursor -win $_nWave1 46439.196321
wvSetCursor -win $_nWave1 46439.196321
wvSetCursor -win $_nWave1 47344.925328
wvSetCursor -win $_nWave1 47344.925328
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetCursor -win $_nWave1 59720.477113 -snap {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvExpandBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 47)}
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvCollapseBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
{/SystemC/controller/packet_fifo_sz\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvExpandBus -win $_nWave1 {("G2" 14)}
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvCollapseBus -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetCursor -win $_nWave1 62272.986131 -snap {("G2" 13)}
wvSetCursor -win $_nWave1 61531.935126 -snap {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvExpandBus -win $_nWave1 {("G2" 14)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvCollapseBus -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetCursor -win $_nWave1 60683.843420 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvExpandBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 15 16 17 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_1"
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/flit_tx\[33\]} \
{/SystemC/controller/flit_tx\[32\]} \
{/SystemC/controller/flit_tx\[31\]} \
{/SystemC/controller/flit_tx\[30\]} \
{/SystemC/controller/flit_tx\[29\]} \
{/SystemC/controller/flit_tx\[28\]} \
{/SystemC/controller/flit_tx\[27\]} \
{/SystemC/controller/flit_tx\[26\]} \
{/SystemC/controller/flit_tx\[25\]} \
{/SystemC/controller/flit_tx\[24\]} \
{/SystemC/controller/flit_tx\[23\]} \
{/SystemC/controller/flit_tx\[22\]} \
{/SystemC/controller/flit_tx\[21\]} \
{/SystemC/controller/flit_tx\[20\]} \
{/SystemC/controller/flit_tx\[19\]} \
{/SystemC/controller/flit_tx\[18\]} \
{/SystemC/controller/flit_tx\[17\]} \
{/SystemC/controller/flit_tx\[16\]} \
{/SystemC/controller/flit_tx\[15\]} \
{/SystemC/controller/flit_tx\[14\]} \
{/SystemC/controller/flit_tx\[13\]} \
{/SystemC/controller/flit_tx\[12\]} \
{/SystemC/controller/flit_tx\[11\]} \
{/SystemC/controller/flit_tx\[10\]} \
{/SystemC/controller/flit_tx\[9\]} \
{/SystemC/controller/flit_tx\[8\]} \
{/SystemC/controller/flit_tx\[7\]} \
{/SystemC/controller/flit_tx\[6\]} \
{/SystemC/controller/flit_tx\[5\]} \
{/SystemC/controller/flit_tx\[4\]} \
{/SystemC/controller/flit_tx\[3\]} \
{/SystemC/controller/flit_tx\[2\]} \
{/SystemC/controller/flit_tx\[1\]} \
{/SystemC/controller/flit_tx\[0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvExpandBus -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 42)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 14 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 14 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvCollapseBus -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 34 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 69905.811484 -snap {("G3" 4)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 60107.470416 -snap {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvCollapseBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectGroup -win $_nWave1 {G4}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_0"
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 "/SystemC/router_0/out_req_0" \
           "/SystemC/router_0/out_req_1" "/SystemC/router_0/out_req_2" \
           "/SystemC/router_0/out_req_3" "/SystemC/router_0/out_req_4"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 10)}
wvScrollUp -win $_nWave1 1
wvSetPosition -win $_nWave1 {("G4" 11)}
wvSetPosition -win $_nWave1 {("G4" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSetPosition -win $_nWave1 {("G4" 11)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvGetSignalSetScope -win $_nWave1 "/SystemC/controller"
wvSetPosition -win $_nWave1 {("G4" 12)}
wvSetPosition -win $_nWave1 {("G4" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 12 )} 
wvSetPosition -win $_nWave1 {("G4" 12)}
wvSetCursor -win $_nWave1 40428.449280 -snap {("G4" 7)}
wvSetCursor -win $_nWave1 49897.434345 -snap {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_1"
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_1"
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 60107.470416 -snap {("G4" 11)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/out_ack_0} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetCursor -win $_nWave1 69905.811484 -snap {("G5" 1)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 59778.114414 -snap {("G2" 13)}
wvSetCursor -win $_nWave1 69823.472483 -snap {("G2" 13)}
wvSetCursor -win $_nWave1 60189.809417 -snap {("G2" 13)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvExpandBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvCollapseBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/controller"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC"
wvGetSignalSetScope -win $_nWave1 "/SystemC/controller"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg} -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 41828.212289 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 63977.403443 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 64224.420444
wvSetCursor -win $_nWave1 68753.065476
wvSetCursor -win $_nWave1 76986.965533
wvSetCursor -win $_nWave1 83244.729576
wvSetCursor -win $_nWave1 86044.255595
wvSetCursor -win $_nWave1 50638.485350 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 54920.113380
wvSetCursor -win $_nWave1 58378.351404
wvSetCursor -win $_nWave1 62495.301433
wvSetCursor -win $_nWave1 63977.403443
wvSetCursor -win $_nWave1 67847.336470
wvSetCursor -win $_nWave1 71717.269496
wvSetCursor -win $_nWave1 75834.219525
wvSetCursor -win $_nWave1 80856.898560
wvSetCursor -win $_nWave1 83162.390576
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 89749.510621
wvSetCursor -win $_nWave1 98477.444682
wvSetCursor -win $_nWave1 103006.089713
wvSetCursor -win $_nWave1 72540.659502
wvSetCursor -win $_nWave1 66941.607463
wvSetCursor -win $_nWave1 61013.199422
wvSetCursor -win $_nWave1 58790.046407
wvSetCursor -win $_nWave1 65212.488451
wvSetCursor -win $_nWave1 67517.980467
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 73117.032506
wvSetCursor -win $_nWave1 75175.507520
wvSetCursor -win $_nWave1 75175.507520
wvSetCursor -win $_nWave1 75175.507520
wvSetCursor -win $_nWave1 75175.507520
wvSetCursor -win $_nWave1 69988.150484
wvSetCursor -win $_nWave1 67847.336470
wvSetCursor -win $_nWave1 66118.217458
wvSetCursor -win $_nWave1 64059.742443
wvSetCursor -win $_nWave1 64059.742443
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvExpandBus -win $_nWave1 {("G2" 2)}
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 75834.219525 -snap {("G2" 2)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvExpandBus -win $_nWave1 {("G2" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 75834.219525 -snap {("G2" 19)}
wvSetCursor -win $_nWave1 65047.810450 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 74681.473517 -snap {("G2" 29)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 104735.208725 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 108934.497754 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 120247.876432 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 109708.484359 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 119753.842429 -snap {("G2" 9)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectGroup -win $_nWave1 {G6}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/core_1"
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvScrollDown -win $_nWave1 10
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_0"
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/in_ack_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/in_ack_4} \
{/SystemC/router_0/out_req_0} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/out_req_2} \
{/SystemC/router_0/out_req_3} \
{/SystemC/router_0/out_req_4} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSelectSignal -win $_nWave1 {( "G4" 9 )} 
wvSelectSignal -win $_nWave1 {( "G4" 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 70144.594586 -snap {("G4" 7)}
wvSetCursor -win $_nWave1 60181.575517 -snap {("G4" 9)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectGroup -win $_nWave1 {G4}
wvRenameGroup -win $_nWave1 {G4} {R0}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G3}
wvRenameGroup -win $_nWave1 {G3} {C1}
wvScrollDown -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {G5}
wvRenameGroup -win $_nWave1 {G5} {R1}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_1"
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_0"
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSetPosition -win $_nWave1 {("R0" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSetPosition -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSetPosition -win $_nWave1 {("R0" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSetPosition -win $_nWave1 {("R0" 7)}
wvSetPosition -win $_nWave1 {("R0" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/input_fifo_size_4\[63:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSetPosition -win $_nWave1 {("R0" 7)}
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("R0" 7)}
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSetCursor -win $_nWave1 89502.493619 -snap {("R0" 6)}
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSetPosition -win $_nWave1 {("R0" 7)}
wvSetPosition -win $_nWave1 {("R0" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/in_flit_4\[33:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSetPosition -win $_nWave1 {("R0" 7)}
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSetPosition -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("R0" 4)}
wvSetPosition -win $_nWave1 {("R0" 5)}
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 40115.561078 -snap {("G2" 15)}
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSetCursor -win $_nWave1 90095.334424 -snap {("R0" 7)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSelectSignal -win $_nWave1 {( "R0" 9 )} 
wvSelectSignal -win $_nWave1 {( "R0" 8 )} 
wvSelectSignal -win $_nWave1 {( "R0" 9 )} 
wvSelectSignal -win $_nWave1 {( "R0" 8 )} 
wvSelectSignal -win $_nWave1 {( "R0" 9 )} 
wvSelectSignal -win $_nWave1 {( "R0" 8 )} 
wvSelectSignal -win $_nWave1 {( "R0" 9 )} 
wvSelectSignal -win $_nWave1 {( "R0" 8 )} 
wvSelectSignal -win $_nWave1 {( "R0" 9 )} 
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSetPosition -win $_nWave1 {("R0" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_4\[33:0\]} \
{/SystemC/router_0/en_out_gate_1} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 226575545.975122 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232457283.099421
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 232489938.747069 -snap {("R0" 7)}
wvSetCursor -win $_nWave1 232457826.536847 -snap {("R0" 7)}
wvSetCursor -win $_nWave1 232440535.346727 -snap {("R0" 7)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 232399365.846442 -snap {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 232429699.534223 -snap {("G2" 9)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 232440074.248294 -snap {("R0" 10)}
wvSetCursor -win $_nWave1 232480255.680572 -snap {("R0" 10)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 232420312.888158 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232479267.612566 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232480091.002571 -snap {("R0" 5)}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("R0" 10)}
wvSetPosition -win $_nWave1 {("R0" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_4\[33:0\]} \
{/SystemC/router_0/en_out_gate_1} \
{/SystemC/router_1/en_out_gate_0} \
{/SystemC/router_1/en_out_gate_2} \
{/SystemC/router_1/en_out_gate_3} \
{/SystemC/router_1/en_out_gate_4} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("R0" 10)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSelectSignal -win $_nWave1 {( "R0" 10 )} 
wvSelectSignal -win $_nWave1 {( "R0" 9 )} 
wvSelectSignal -win $_nWave1 {( "R0" 10 )} 
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R0" 7 )} 
wvSelectSignal -win $_nWave1 {( "R0" 7 8 9 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("R0" 10)}
wvSetPosition -win $_nWave1 {("R0" 6)}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_0"
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_1"
wvGetSignalSetScope -win $_nWave1 "/SystemC/router_0"
wvSetPosition -win $_nWave1 {("R0" 10)}
wvSetPosition -win $_nWave1 {("R0" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SystemC/clk} \
{/SystemC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SystemC/controller/data_valid_reg} \
{/SystemC/controller/data_reg\[33:0\]} -height 98 -color ID_RED5 \
{/SystemC/controller/ack_rx} \
{/SystemC/controller/clk} \
{/SystemC/controller/current_step\[31:0\]} \
{/SystemC/controller/data} -color ID_RED5 \
{/SystemC/controller/data_valid} \
{/SystemC/controller/flit_rx\[33:0\]} \
{/SystemC/controller/flit_tx\[33:0\]} \
{/SystemC/controller/layer_id\[31:0\]} \
{/SystemC/controller/layer_id_type} \
{/SystemC/controller/layer_id_valid} \
{/SystemC/controller/req_rx} \
{/SystemC/controller/req_tx} \
{/SystemC/controller/ack_tx} \
}
wvAddSignal -win $_nWave1 -group {"C1" \
{/SystemC/core_1/ack_tx} \
{/SystemC/core_1/clk} \
{/SystemC/core_1/flit_rx\[33:0\]} \
{/SystemC/core_1/flit_tx\[33:0\]} \
{/SystemC/core_1/req_rx} \
{/SystemC/core_1/ack_rx} \
{/SystemC/core_1/req_tx} \
{/SystemC/core_1/rst} \
}
wvAddSignal -win $_nWave1 -group {"R0" \
{/SystemC/router_0/in_req_0} \
{/SystemC/router_0/in_req_1} \
{/SystemC/router_0/in_req_2} \
{/SystemC/router_0/in_req_3} \
{/SystemC/router_0/in_flit_4\[33:0\]} \
{/SystemC/router_0/en_out_gate_1} \
{/SystemC/router_0/en_out_gate_0} \
{/SystemC/router_0/en_out_gate_2} \
{/SystemC/router_0/en_out_gate_3} \
{/SystemC/router_0/en_out_gate_4} \
{/SystemC/router_0/in_flit_in_4\[33:0\]} \
{/SystemC/router_0/input_fifo_front4\[33:0\]} \
{/SystemC/router_0/in_req_4} \
{/SystemC/router_0/out_ack_4} \
{/SystemC/router_0/out_req_1} \
{/SystemC/router_0/in_ack_1} \
{/SystemC/router_0/out_flit_1\[33:0\]} \
{/SystemC/controller/clk} \
}
wvAddSignal -win $_nWave1 -group {"R1" \
{/SystemC/router_1/in_req_0} \
{/SystemC/router_1/out_ack_0} \
{/SystemC/router_1/in_flit_0\[33:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "R0" 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("R0" 10)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 4 )} 
wvSelectSignal -win $_nWave1 {( "R0" 3 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 4 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSetCursor -win $_nWave1 232437715.363716
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSetPosition -win $_nWave1 {("R0" 5)}
wvExpandBus -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 44)}
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSetPosition -win $_nWave1 {("R0" 5)}
wvCollapseBus -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 10)}
wvSetCursor -win $_nWave1 232407085.255504
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSetPosition -win $_nWave1 {("R0" 5)}
wvExpandBus -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 44)}
wvSelectSignal -win $_nWave1 {( "R0" 5 )} 
wvSetPosition -win $_nWave1 {("R0" 5)}
wvCollapseBus -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 5)}
wvSetPosition -win $_nWave1 {("R0" 10)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSelectSignal -win $_nWave1 {( "R0" 16 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSetCursor -win $_nWave1 232404779.763488 -snap {("R0" 12)}
wvResizeWindow -win $_nWave1 0 23 1707 889
wvSetCursor -win $_nWave1 232410573.891176 -snap {("R0" 12)}
wvSetCursor -win $_nWave1 232407113.436657 -snap {("R0" 12)}
wvSetCursor -win $_nWave1 232416670.882471 -snap {("R0" 12)}
wvSetCursor -win $_nWave1 232415023.046986
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSetPosition -win $_nWave1 {("R0" 12)}
wvExpandBus -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSetPosition -win $_nWave1 {("R0" 12)}
wvCollapseBus -win $_nWave1 {("R0" 12)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSetPosition -win $_nWave1 {("R0" 11)}
wvExpandBus -win $_nWave1 {("R0" 11)}
wvSetPosition -win $_nWave1 {("R0" 46)}
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSetPosition -win $_nWave1 {("R0" 11)}
wvCollapseBus -win $_nWave1 {("R0" 11)}
wvSetPosition -win $_nWave1 {("R0" 11)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvExpandBus -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSetPosition -win $_nWave1 {("R0" 12)}
wvCollapseBus -win $_nWave1 {("R0" 12)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 16 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "C1" 4 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 232400192.527618 -snap {("G2" 9)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 232410244.324079 -snap {("R0" 11)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 232400686.878264 -snap {("R0" 5)}
wvSetCursor -win $_nWave1 232409255.622787 -snap {("R0" 5)}
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSetCursor -win $_nWave1 232419307.419247 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232407937.354399 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232410738.674724 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232410409.107627 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232410573.891176 -snap {("R0" 5)}
wvSetCursor -win $_nWave1 232420955.254733 -snap {("R0" 6)}
wvSetCursor -win $_nWave1 232409914.756981 -snap {("R0" 5)}
wvSelectSignal -win $_nWave1 {( "R0" 6 )} 
wvSetCursor -win $_nWave1 232419636.986345 -snap {("R0" 13)}
wvSetCursor -win $_nWave1 232419636.986345 -snap {("R0" 12)}
wvSetCursor -win $_nWave1 232399203.826327 -snap {("R0" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "C1" 4 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "R1" 2 )} 
wvSelectSignal -win $_nWave1 {( "R1" 1 )} 
wvSelectSignal -win $_nWave1 {( "R1" 2 )} 
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R1" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R1" 1 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "C1" 4 )} 
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvExpandBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvCollapseBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvExpandBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSetCursor -win $_nWave1 130838.137530
wvSetCursor -win $_nWave1 132815.540112
wvSetCursor -win $_nWave1 132815.540112
wvSetCursor -win $_nWave1 132815.540112
wvSetCursor -win $_nWave1 143032.120121 -snap {("C1" 24)}
wvSetCursor -win $_nWave1 140725.150441 -snap {("C1" 26)}
wvSetCursor -win $_nWave1 153578.267226
wvSetCursor -win $_nWave1 164453.981429
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvCollapseBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvExpandBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvCollapseBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "C1" 4 )} 
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvExpandBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSetCursor -win $_nWave1 82848.096633
wvSelectSignal -win $_nWave1 {( "C1" 3 )} 
wvSetPosition -win $_nWave1 {("C1" 3)}
wvCollapseBus -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("C1" 3)}
wvSetPosition -win $_nWave1 {("R0" 12)}
wvSelectSignal -win $_nWave1 {( "C1" 6 )} 
wvSelectSignal -win $_nWave1 {( "C1" 5 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "R0" 11 )} 
wvSetCursor -win $_nWave1 79720.497804 -snap {("R0" 11)}
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 70138.067350 -snap {("R1" 3)}
wvSelectSignal -win $_nWave1 {( "R0" 17 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSetCursor -win $_nWave1 59823.645681 -snap {("R0" 13)}
wvSetCursor -win $_nWave1 69871.888726 -snap {("R0" 13)}
wvSetCursor -win $_nWave1 59823.645681 -snap {("R0" 13)}
wvSetCursor -win $_nWave1 70204.612006 -snap {("R0" 14)}
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 13 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 14 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 16 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSetCursor -win $_nWave1 59690.556369 -snap {("R0" 13)}
wvSelectSignal -win $_nWave1 {( "R0" 12 )} 
wvSetCursor -win $_nWave1 80186.310395 -snap {("R0" 12)}
wvSetCursor -win $_nWave1 80319.399707 -snap {("R0" 15)}
wvSetCursor -win $_nWave1 70071.522694 -snap {("R0" 13)}
wvSetCursor -win $_nWave1 80319.399707 -snap {("R0" 15)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd.fsdb" \
           "/RAID2/COURSE/mlchip/mlchip007/hw4/wave.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSelectSignal -win $_nWave1 {( "R0" 16 )} 
wvSelectSignal -win $_nWave1 {( "R0" 15 )} 
wvSetCursor -win $_nWave1 70071.522694 -snap {("R0" 17)}
wvSetCursor -win $_nWave1 33538.506589 -snap {("G2" 15)}
wvSetCursor -win $_nWave1 32074.524158
wvSetCursor -win $_nWave1 32074.524158
wvSetCursor -win $_nWave1 30011.639824
