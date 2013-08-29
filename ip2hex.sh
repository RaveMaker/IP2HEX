#!/bin/bash

# convert IP addres to HEX value
# For example : 10.0.0 - 0a0000
#
# by RaveMaker - http://ravemaker.net

echo "Please input SUBNET or IP, for example 10.0.0"
read IP_ADDR

# Convert values to Hex
filename=$(printf '%02X' ${IP_ADDR//./ })

# Convert to lowercase
lowerfilename=${filename,,}

# Print Upper and Lower Case Hex values
echo $filename
echo $lowerfilename
