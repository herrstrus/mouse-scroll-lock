#!/bin/bash
sleep=10 # sleep time
interval=10 # announcement interval
echo "Starting ScrollLock-toggle no-sleep routine..." # message
start_time=$(date +"%A %d/%m/%Y %H:%M (%Z)") # start time
echo "Start time: $start_time" # message
index=0
while true; do
    echo "< 3" # message
    xdotool key Scroll_Lock # toggle Scroll Lock
    sleep 0.2s
    echo "<3" # message
    xdotool key Scroll_Lock # toggle Scroll Lock
    sleep $sleep
    if (( $index % $interval == 0 )); then
        elapsed_time=$(($(date +%s) - $(date -d "$start_time" +%s)))
        printf "Elapsed Time: %02d.%02d:%02d:%02d\n" $((elapsed_time/86400)) $((elapsed_time/3600%24)) $((elapsed_time/60%60)) $((elapsed_time%60))
    fi
    ((index++))
done