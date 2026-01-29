#!/bin/bash

NUM1=100
NUM2=Sai

SUM=$((NUM1+NUM2))

echo sum is $SUM"

# Arrays

FRUITS=("Apple" "Orange" "Grapes")

echo "First fruit is: ${FRUITS[0]}"
echo "Second fruit: ${FRUITS[1]}"
echo "All fruits: ${FRUITS[@]}"
echo "All fruits: ${FRUITS[*]}"
echo "Number of fruits: ${#FRUITS[@]}"