#! /bin/bash -x

echo "***** Welcome to the Flip Coin Combination Script. *****"

heads=1
tails=0

flipResult=$((RANDOM%2))
if [ $flipResult -eq 1 ]
then
        echo "Heads"
else
	echo "Tails"
fi

