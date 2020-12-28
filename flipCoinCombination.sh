#! /bin/bash -x

echo "***** Welcome to the Flip Coin Combination Script. *****"

heads=1
tails=0

read -p "How many times you want to flip the coin ? " flipCount

for (( i=1; i<=$flipCount; i++ ))
do
	flipResult=$((RANDOM%2))
	if [ $flipResult -eq 1 ]
	then
		echo "H"
	else
		echo "T"
	fi
done
