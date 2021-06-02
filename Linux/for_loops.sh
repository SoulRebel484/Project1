#!/bin/bash


states=('pennsylvania' 'california' 'north carolina' 'new jersey' texas')

for state in ${states[@]}
do
   if [ $state == 'hawaii' ]
    then
        echo "Hawaii is the best!"
     else
        echo "Im not fond of Hawaii"
    fi
done
