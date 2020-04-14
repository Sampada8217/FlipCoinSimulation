#!/bin/bash -x
count=0
head=0
tail=0
while [ $count -ne 6 ]
do  
        counter=0
        declare -A singlet
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
	       echo "Head"
               singlet[counter++]="Head"
               ((head++))
	else
		echo "Tail"
              singlet[counter++]="Tail"
   	       ((tail++))
	fi
      ((count++))
done
singlet1[0]=$head
singlet1[1]=$tail
percentHead=$(( ( $head * 100 ) / 6 ))
percentTail=$(( ($tail * 100 ) / 6 ))
   
echo "Soting Singlet"
sort -n <(printf "%s\n" "${singlet1[@]}")
if [ $head -gt $tail ]
then
	echo"Wining combination is Head"
elif [ $head -lt $tail ]
then
       echo "Wining combination is Tail"
else
	echo "Both Combinations are equal"
fi
#Code For Doublet Combination

HH=0
HT=0
TH=0
TT=0
echo "Enter no of flips"
read flip1
count=0
while [ $count -ne $flip1 ]
do
	random=$((RANDOM%2))
        random1=$((RANDOM%2))
        if [ $random -eq 1 ] && [ $random1 -eq  1 ] 
        then
             echo "HH"
              ((HH++))
        elif [  $random -eq 1 ] && [ $random1 -eq 0 ] 
        then
            echo "HT"
              ((HT++))
        elif [  $random -eq 0 ] && [ $random1 -eq 1  ] 
        then
             echo "TH"
              ((TH++))
        else
             echo "TT"
             ((TT++))
        fi
        ((count++))
done
doublet[0]=$HH
doublet[1]=$HT
doublet[2]=$TH
doublet[3]=$TT
percentHH=$(( ($HH * 100 ) / $flip1 ))
percentHT=$(( ($HT * 100 ) / $flip1 ))
percentTH=$(( ($TH * 100 ) / $flip1 ))
percentTT=$(( ($TT * 100 ) / $flip1 ))

echo "Sorting Doublet Combination"
sort -n <(printf "%s\n" "${doublet[@]}" )

if [ $HH -gt $HT ] && [ $HH -gt $TH ] && [ $HH -gt $TT ]
then
        echo "winning is  HH"
elif [ $HT -gt $HH ] && [ $HT -gt $TH ] && [ $HT -gt $TT ]
then
	echo "Winning is HT"
elif [ $TH -gt $HH ] && [ $TH -gt $TT ] && [ $TH -gt $HT ] 
then
	echo "Winning is TH"
else
	echo "Winning is TT"
fi



#Code for Triplet Combination
echo "Enter no of flip"
read flip2
HHH=0
HTH=0
HTT=0
HHT=0
TTT=0
THT=0
TTH=0
THH=0
count1=0
while [ $count1 -ne $flip2 ]
do
	random=$((RANDOM%2))
        random1=$((RANDOM%2))
	random2=$((RANDOM%2))
	if [ $random -eq  1 ] && [ $random1 -eq 1 ] && [ $random2 -eq 1 ]
        then
		echo "HHH"
 		((HHH++))
	elif [ $random -eq 1 ] && [ $random1 -eq 0 ] && [ $random2 -eq 1 ]
	then
		echo "HTH"
		((HTH++))
	elif [ $random -eq 1 ] && [ $random1 -eq 0 ] && [ $random2 -eq 0 ]
	then
		echo "HTT"
		((HTT++))
	elif [ $random -eq 1 ] && [ $random1 -eq 1 ] && [ $random2 -eq 0 ]
	then
		echo "HHT"
		((HHT++))
	elif [ $random -eq 0 ] && [ $random1 -eq 0 ] && [ $random2 -eq 0 ]
	then
		echo "TTT"
		((TTT++))
	elif [ $random -eq 0 ] && [ $random1 -eq 1 ]  && [ $random2 -eq 1 ]
	then
		echo "THH"
		((THH++))
	elif [ $random -eq 0 ] && [ $random1 -eq 1 ] && [ $random2 -eq  0 ]
	then
		echo "THT"
		((THT++))
	else
      		echo "TTH"
		((TTH++))
	fi
	((count1++))
done
triplet[0]=$HHH
triplet[1]=$HTH
triplet[2]=$HTT
triplet[3]=$HHT
triplet[4]=$TTT
triplet[5]=$THH
triplet[6]=$THT
triplet[7]=$TTH

percentHHH=$(( ( $HHH * 100 ) / $flip2 ))
percentHTH=$(( ( $HTH * 100 ) / $flip2 ))
percentHTT=$(( ( $HTT * 100 ) / $flip2 ))
percentHHT=$(( ( $HHT * 100 ) / $flip2 ))
percentTTT=$(( ( $TTT * 100 ) / $flip2 ))
percentTHT=$(( ( $THT * 100 ) / $flip2 ))
percentTTH=$(( ( $TTH * 100 ) / $flip2 ))
percentTHH=$(( ( $THH * 100 ) / $flip2 ))

echo "Sorting Triplet"
sort -n <(printf "%s\n" "${triplet[@]}" ) 

