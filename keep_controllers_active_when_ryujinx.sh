#!/bin/bash

# List of controllers (Replace with actual MAC addresses)
CONTROLLERS=(
    "XX:XX:XX:XX:XX:XX"
    "YY:YY:YY:YY:YY:YY"
    "ZZ:ZZ:ZZ:ZZ:ZZ:ZZ"
    "AA:AA:AA:AA:AA:AA"
)

# Function to check if Ryujinx is running
is_ryujinx_running() {
    pgrep -x "Ryujinx" > /dev/null
}

# Function to reconnect controllers
keep_controllers_alive() {
    for CONTROLLER in "${CONTROLLERS[@]}"; do
        echo "Reconnecting controller $CONTROLLER..."
        blueutil --connect $CONTROLLER
    done
}

while true; do
    if is_ryujinx_running; then
        echo "Ryujinx is active. Simulating key press and maintaining connection..."
        
        # Simulate a key press to prevent controller sleep
        hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000039}]}'
        
        # Keep controllers connected
        keep_controllers_alive
    else
        echo "Ryujinx is not running. No action taken."
    fi

    sleep 240  # Check every 4 minutes
done
