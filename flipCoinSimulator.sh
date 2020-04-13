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
   
