#!/bin/bash

if [ -d /research ]
then
  echo The /research directorty exists
fi

if [ ! -d $HOME/research ]
then
 mkdir $HOME/research
fi

if [ -d $HOME/research ]
then
  echo "No need to make directory."
else
   mkdir $HOME/research
fi

# if file exists

output=$HOME/research/sys_info.txt
if [ -f $output ]
then
  rm $output
fi
