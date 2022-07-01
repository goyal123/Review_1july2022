#!/bin/bash

function prime_factors()
{ 
  num=$1
  index=0
  for (( i=2;i<=(($1/2));i++ ))
  do
	while [[ $((num%$i)) == 0 ]]
	do
		arr[$index]=$i
		index=$index+1
		num=$((num/$i))
	done
  done

  echo "Prime Factors = " ${arr[@]}
}


read -p "Enter input: " num
prime_factors $num
