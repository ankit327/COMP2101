#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "===task1====="
prompt="Enter only number: "
#read is used for getting input from user
read -p "$prompt" usernumber1
echo "Your input is $usernumber1"
read -p "$prompt" usernumber2
echo "Your input is $usernumber2"
read -p "$prompt" usernumber3
echo "Your input is $usernumber3"

#the sum of three numbers
sum=$((usernumber1 + usernumber2 + usernumber3))

#the product of three numbers
product=$((usernumber1 * usernumber2 * usernumber3))

cat <<EOF
$usernumber1 plus $usernumber2 plus $usernumber3 = $sum
$usernumber1 multiply $usernumber2 multiply $usernumber3 = $product
EOF
