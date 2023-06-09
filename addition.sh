#!/bin/bash

addition() {
	result=$(echo "$1 + $2" | bc)
	echo "The sum of $1 and $2 is $result"
 }

 read -p "Enter the first element: " num
 read -p "Enter the second element: " num1

 addition $num $num1
