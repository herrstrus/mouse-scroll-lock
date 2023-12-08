#!/bin/bash

# Set default parameters
sleep_time=10   # Sleep time in seconds
announcement_interval=10   # Announcement interval in seconds

# Check if sleep time and announcement interval are valid
if [[ $sleep_time -lt 0 || $announcement_interval -lt 0 ]]; then
    echo "Error: Sleep time and announcement interval must be non-negative."
    exit 1
fi

# Clear the terminal screen
clear

# Create a function to simulate ScrollLock key press
scroll_lock() {
    xdotool key "Scroll Lock"
}

# Get the current date and time
current_time=$(date +"%A %d/%m/%Y %H:%M (%Z)")

# Start the stopwatch
stopwatch=$(xdotool key "space") &

# Main loop
while true; do
    # Print "Less than 3" message
    echo "< 3"

    # Press ScrollLock key
    scroll_lock

    # Simulate a short delay
    sleep 0.2

    # Print "More than 3" message
    echo "<3"

    # Press ScrollLock key again
    scroll_lock

    # Sleep for the specified amount of time
    sleep $sleep_time

    # Check if the stopwatch is running and the current index is divisible by the announcement interval
    if [ -n "$stopwatch" -a (( ++index % announcement_interval) -eq 0 )]; then
        # Print the elapsed time
        echo "Elapsed Time: $(date +%R:%S)"

        # Stop the stopwatch
        kill $stopwatch
    fi
done