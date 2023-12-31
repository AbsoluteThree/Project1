#!/bin/bash

filename="music_list"
if [ -e "$filename" ]
then
   sort -uR "$filename" -o  "$filename" 
   bash shell/playmusic/playmusic1.sh
else
   bash shell/playmusic/playmusic1.sh -n 
   sort -uR "$filename" -o  "$filename"
fi

