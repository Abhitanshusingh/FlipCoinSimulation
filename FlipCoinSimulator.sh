#!/bin/bash -x
#PRINTING MESSAGE
echo "Welcome to flip coin simulation "
#GENERATING RANDOM VALUE
result=$((RANDOM%2+1))
#CONSTANT VARIBALE
COUNT_HEAD=0
COUNT_TAIL=0
read -p "Enter how many time to flip coin: " userInput
TEMP=$userInput
#INITILIZE DICTIONARY
declare -A FlipingCoin
#CONSTANT VARIBALE
COUNT_HH=0		#HH=Head Head
COUNT_HT=0		#HT=Head Tail
COUNT_TT=0		#TT=Tail Tail
COUNT_TH=0		#TH=Tail Tail
#INITILIZE DICTIONARY
declare -A FlipingCoin
#USING LOOP TO FLIP COIN MULTIPLE TIME
for(( i=1; i<=$userInput; i++ ))
	do
	#GENERATING RANDOM VALUE
	result=$((RANDOM%4+1))
	#USINGCASESTATEMENT
		case $result in
			1)
				COUNT_HH=$(($COUNT_HH+1))
				FlipingCoin["HH"]="$COUNT_HH"
				;;
			2)
				COUNT_HT=$(($COUNT_HT+1))
				FlipingCoin["HT"]="$COUNT_HT"
				;;
			3)
				COUNT_TT=$(($COUNT_TT+1))
				FlipingCoin["TT"]="$COUNT_TT"
				;;
			4)
				COUNT_TH=$(($COUNT_TH+1))
				FlipingCoin["TH"]="$COUNT_TH"
				;;
			esac
	done
#CALCULATING PERSENTAGE OF FLIPING COIN
headHeadPercentage=`echo "scale=3; $COUNT_HH / $TEMP * 100" |bc -l`
headTailPercentage=`echo "scale=3; $COUNT_HT / $TEMP * 100" |bc -l`
tailTailPercentage=`echo "scale=3; $COUNT_TT / $TEMP * 100" |bc -l`
tailHeadPercentage=`echo "scale=3; $COUNT_TH / $TEMP * 100" |bc -l`
#PRINTING KEY AND VALUE
for count in ${!FlipingCoin[@]}
do
	echo "$count : ${FlipingCoin[$count]}"
done
#USING DICTIONARY TO PRINT RESULT OF FILPING COIN
echo "Head head percentage : $headHeadPercentage"
echo "Head tail percentage : $headTailPercentage"
echo "Tail tail percentage : $tailTailPercentage"
echo "Tail head percentage : $tailHeadPercentage"


