#! /bin/bash -x

echo "***** Welcome to the Flip Coin Combination Script. *****"

read -p "How many times you want to flip two coins ? " flipCount

declare -A dict

for (( i=1; i<=$flipCount; i++ ))
do
        flipResult=$((RANDOM%8))
	case $flipResult in
		0)
                	dict[$i]="HHH"
			;;
		1)
                	dict[$i]="HHT"
			;;
		2)
			dict[$i]="HTH"
			;;
		3)
			dict[$i]="THH"
			;;
		4)
			dict[$i]="HTT"
			;;
                5)
                        dict[$i]="TTH"
                        ;;
                6)
                        dict[$i]="THT"
                        ;;
                7)
                        dict[$i]="TTT"
                        ;;

	esac
done

echo ${dict[@]}
