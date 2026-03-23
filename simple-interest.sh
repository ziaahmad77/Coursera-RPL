#!/bin/bash

# Script to calculate simple interest
# Formula: I = (P * R * T) / 100

echo "---------------------------------------"
echo "   Simple Interest Calculator (Bash)   "
echo "---------------------------------------"

# Read inputs from the user
echo -n "Enter the Principal amount: "
read p
echo -n "Enter the Annual Interest Rate (%): "
read r
echo -n "Enter the Time period (Years): "
read t

# Perform calculation using 'bc' for floating point support
# If 'bc' is not installed, it will fall back to basic integer math
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc 2>/dev/null || echo "$(( (p * r * t) / 100 ))")
total=$(echo "scale=2; $p + $interest" | bc 2>/dev/null || echo "$(( p + interest ))")

echo "---------------------------------------"
echo "Total Interest: $interest"
echo "Total Amount (Principal + Interest): $total"
echo "---------------------------------------"
