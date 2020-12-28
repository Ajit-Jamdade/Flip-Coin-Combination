#! /bin/bash -x

echo "***** Welcome to the Flip Coin Combination Script. *****"

read -p "How many times you want to flip two coins ? " flipCount

declare -A dict

for (( i=1; i<=$flipCount; i++ ))
do
        flipResult=$((RANDOM%4))
	case $flipResult in
		0)
                	dict[$i]="HH"
			;;
		1)
                	dict[$i]="HT"
			;;
		2)
			dict[$i]="TH"
			;;
		3)
			dict[$i]="TT"
			;;
	esac
done

echo ${dict[@]}
