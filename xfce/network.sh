#!/usr/bin/env bash

# Get the IP addresses
ip_wlp0s20f3=$(ip -f inet addr show wlp0s20f3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "N/A")
ip_enp43s0=$(ip -f inet addr show enp43s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "N/A")
ip_tun0=$(ip -f inet addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "N/A")

# Define colors
color_wlp="#73c936"  # Green for valid IP
color_gray="#808080"  # Gray for N/A

# Set colors based on the IP status
color_wlp_display=$([ "$ip_wlp0s20f3" == "N/A" ] && echo "$color_gray" || echo "$color_wlp")
color_enp_display=$([ "$ip_enp43s0" == "N/A" ] && echo "$color_gray" || echo "$color_wlp")
color_tun_display=$([ "$ip_tun0" == "N/A" ] && echo "$color_gray" || echo "$color_wlp")

# Generate the output for GenMon in one line
echo "<txt>[W:<span weight=\"bold\" fgcolor=\"$color_wlp_display\">$ip_wlp0s20f3</span> | C:<span weight=\"bold\" fgcolor=\"$color_enp_display\">$ip_enp43s0</span> | T:<span weight=\"bold\" fgcolor=\"$color_tun_display\">$ip_tun0</span>]</txt>"
