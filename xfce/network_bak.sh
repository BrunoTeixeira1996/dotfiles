#!/usr/bin/env bash

# Get the IP addresses
ip_wlp0s20f3=$(ip -f inet addr show wlp0s20f3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "N/A")
ip_enp43s0=$(ip -f inet addr show enp43s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "N/A")
ip_tun0=$(ip -f inet addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "N/A")

# Generate the output for GenMon in one line
echo "<txt>[W:<span weight=\"bold\" fgcolor=\"#73c936\">$ip_wlp0s20f3</span> | C:<span weight=\"bold\" >$ip_enp43s0</span> | T:<span weight=\"bold\">$ip_tun0</span>]</txt>"
