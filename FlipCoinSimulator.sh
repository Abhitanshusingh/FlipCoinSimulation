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
COUNT_HHH=0		#HHH=Head Head Head
COUNT_HHT=0		#HHT=Head Head Tail
COUNT_HTH=0		#HTH=Head Tail Head
COUNT_THH=0		#THH=Tail Head Head
COUNT_TTT=0		#TTT=Tail Tail Tail
COUNT_TTH=0		#TTH=Tail Tail Head
COUNT_THT=0		#THT=Tail Head Tail
COUNT_HTT=0		#HTT=Head Tail Tail
#USING LOOP TO FLIP COIN MULTIPLE TIME
for(( i=1; i<=$userInput; i++ ))
do
	#GENERATING RANDOM VALUE
	result=$((RANDOM%8+1))
		#USING CASE STATEMENT
		case $result in
			1)
				COUNT_HHH=$(($COUNT_HHH+1))
				FlipingCoin["HHH"]="$COUNT_HHH"
				;;

			2)
				COUNT_HHT=$(($COUNT_HHT+1))
				FlipingCoin["HHT"]="$COUNT_HHT"
				;;

			3)
   		   COUNT_HTH=$(($COUNT_HTH+1))
				FlipingCoin["HTH"]="$COUNT_HTH"
				;;

			4)
				COUNT_THH=$(($COUNT_THH+1))
				FlipingCoin["THH"]="$COUNT_THH"
				;;

			5)
				COUNT_TTT=$(($COUNT_TTT+1))
				FlipingCoin["TTT"]="$COUNT_TTT"
				;;

			6)
				COUNT_TTH=$(($COUNT_TTH+1))
				FlipingCoin["TTH"]="$COUNT_TTH"
				;;

			7)
				COUNT_THT=$(($COUNT_THT+1))
				FlipingCoin["THT"]="$COUNT_THT"
				;;

			8)
				COUNT_HTT=$(($COUNT_HTT+1))
				FlipingCoin["HTT"]="$COUNT_HTT"
				;;
		esac
done
#CALCULATING PERSENTAGE OF FLIPING COIN
hhhPercentage=`echo "scale=3; $COUNT_HHH / $TEMP * 100" |bc -l`
hhtPercentage=`echo "scale=3; $COUNT_HHT / $TEMP * 100"  |bc -l`
hthPercentage=`echo "scale=3; $COUNT_HTH / $TEMP * 100"  |bc -l`
thhPercentage=`echo "scale=3; $COUNT_THH / $TEMP * 100"  |bc -l`
tttPercentage=`echo "scale=3; $COUNT_TTT / $TEMP * 100"  |bc -l`
tthPercentage=`echo "scale=3; $COUNT_TTH / $TEMP * 100"  |bc -l`
thtPercentage=`echo "scale=3; $COUNT_THT / $TEMP * 100"  |bc -l`
httPercentage=`echo "scale=3; $COUNT_HTT / $TEMP * 100"  |bc -l`
#PRINTING NUMBER OF TIME HEAD AND TAIL
for count in ${!FlipingCoin[@]}
	do
	echo "$count : ${FlipingCoin[$count]}"
done
#PRINT RESULT OF FILPING COIN
echo "Head head head percentage : $hhhPercentage"
echo "Head head tail percentage : $hhtPercentage"
echo "Head tail head percentage : $hthPercentage"
echo "Tail head head percentage : $thhPercentage"
echo "Tail tail tail percentage : $tttPercentage"
echo "Tail tail head percentage : $tthPercentage"
echo "Tail head tail percentage : $thtPercentage"
echo "Head Tail tail percentage : $httPercentage"
