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
