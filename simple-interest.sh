#!/usr/bin/env bash
# Simple Interest Calculator: SI = (P * R * T) / 100

read -p "Enter Principal (P): " P
read -p "Enter Rate (R): " R
read -p "Enter Time (T): " T

# Basic validation
if [[ -z "$P" || -z "$R" || -z "$T" ]]; then
  echo "Error: All inputs are required." >&2
  exit 1
fi
if ! [[ "$P" =~ ^[0-9]+([.][0-9]+)?$ && "$R" =~ ^[0-9]+([.][0-9]+)?$ && "$T" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: P, R, and T must be numeric." >&2
  exit 1
fi

SI=$(awk "BEGIN { printf \"%.2f\", ($P * $R * $T) / 100 }")
echo "Simple Interest = $SI"
