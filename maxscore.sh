#!/bin/bash
# Tyler Momani
# CPSC 298-01
# maxscore.sh — Reads 5 positive integers, finds the highest, and shows differences

echo "Enter 5 positive integers:"
for ((i=0; i<5; i++)); do
    read -r -p "Score $((i+1)): " score
    scores[i]=$score
done

max=${scores[0]}
for s in "${scores[@]}"; do
    if (( s > max )); then
        max=$s
    fi
done

echo ""
echo "The highest score is: $max"
echo "The scores are:"

for s in "${scores[@]}"; do
    diff=$(( max - s ))
    echo "$s differs from max by $diff"
done
