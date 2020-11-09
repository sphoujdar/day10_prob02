#!/bin/bash -x

heads_count=0
tails_count=0
while [ $heads_count -ne 21 -a $tails_count -ne 21 ] ; do
	((flip=RANDOM%2))
	if [ $flip -eq 0 ] ; then
		((heads_count+=1))
	else
		((tails_count+=1))
	fi
done

if [ $heads_count -eq 21 ] ; then
	echo Heads WON!
	echo Head Won by $(($heads_count-$tails_count))
elif [ $tails_count -eq 21 ] ; then
	echo Tails WON!
        echo Tails Won by $(($tails_count-$heads_count))
fi

echo Heads Score : $heads_count --- Tails Score : $tails_count
