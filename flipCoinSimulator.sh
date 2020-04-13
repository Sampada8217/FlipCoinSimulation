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
singlet[0]=$head
singlet[1]=$tail
percentHead=$(( ( $head * 100 ) / 6 ))
percentTail=$(( ($tail * 100 ) / 6 ))
   

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
percentHH=$(( ($HH * 100 ) / $flip1 ))
percentHT=$(( ($HT * 100 ) / $flip1 ))
percentTH=$(( ($TH * 100 ) / $flip1 ))
percentTT=$(( ($TT * 100 ) / $flip1 ))


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
percentHHH=$(( ( $HHH * 100 ) / $flip2 ))
percentHTH=$(( ( $HTH * 100 ) / $flip2 ))
percentHTT=$(( ( $HTT * 100 ) / $flip2 ))
percentHHT=$(( ( $HHT * 100 ) / $flip2 ))
percentTTT=$(( ( $TTT * 100 ) / $flip2 ))
percentTHT=$(( ( $THT * 100 ) / $flip2 ))
percentTTH=$(( ( $TTH * 100 ) / $flip2 ))
percentTHH=$(( ( $THH * 100 ) / $flip2 ))

