#!/bin/bash

# Function to send Tab key after a short delay
send_tab() {
    sleep 0.2
    xdotool key Tab
}

# Run the tab-sending function in the background
send_tab &

# Launch Rofi
rofi -show window -theme tokyonight \
    -kb-cancel "Alt+Escape,Escape" \
    -kb-accept-entry "Return" \
    -kb-row-down "Alt+Tab,Alt+Down,Down" \
    -kb-row-up "Alt+ISO_Left_Tab,Alt+Up,Up"

# Kill any remaining background processes
kill $(jobs -p)
