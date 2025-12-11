#!/bin/bash

function get_ram_usage {
    echo "--- Utilisation RAM ---"
    free -h | grep Mem
    echo ""
}

function get_cpu_usage {
    echo "--- Utilisation CPU ---"
    CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "Utilisation actuelle du CPU: ${CPU_IDLE}%"
    echo ""
}

function get_disk_usage {
    echo "--- Espace Disque ---"
    df -h --exclude-type=tmpfs --exclude-type=devtmpfs
    echo ""
}

get_ram_usage
get_cpu_usage
get_disk_usage
