#!/bin/bash

filename="music_love_list"
if [ -e "$filename" ]
then
   sort -uR "$filename" -o  "$filename" 
   bash shell/playmusic/music_love1.sh
else
   bash shell/playmusic/music_love1.sh -n 
   sort -uR "$filename" -o  "$filename"
fi

