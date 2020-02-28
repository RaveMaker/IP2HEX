#!/bin/bash

# convert IP addres to HEX value
# For example : 10.0.0 - 0a0000
# used to create PXE boot files specific to certain IP addresses
#
# by RaveMaker - http://ravemaker.net

echo "Please input SUBNET or IP, for example 10.0.0"
read -r IP_ADDR

# Convert values to Hex
HEX_IP_ADDR=$(printf '%02X' ${IP_ADDR//./ })

# Convert to lowercase
HEX_IP_ADDR_LOWER=${HEX_IP_ADDR,,}

# Print Upper and Lower Case Hex values
echo "$HEX_IP_ADDR"
echo "$HEX_IP_ADDR_LOWER"
