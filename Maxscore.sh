#!/bin/bash
# Tyler Momani
# CPSC 298-01

printf "Enter 5 positive integers:\n" >&2
declare -a scores
for ((i=0; i<5; i++)); do
    printf "Score %d: " $((i+1)) >&2
    read -r score
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
