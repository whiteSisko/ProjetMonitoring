#!/bin/bash

function get_ram_usage {
    echo "--- Utilisation RAM ---"
    free -h | grep Mem
    echo ""
}
function get_cpu_usage {
    echo "--- Utilisation CPU ---"
    CPU_IDE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "Utilisation actuelle du CPU: ${CPU_IDLE}%"
    echo ""
}