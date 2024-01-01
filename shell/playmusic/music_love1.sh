#!/bin/bash
rebuild=
musiclist=music_love_list
music_adrr=/home/ubuntu/音乐/我喜欢
show()
{
    echo "Usage: playmusic [-n -f playlist]"
    echo " n    rebuild playlist file"
    echo " f    read playlist by user,default auto read 'music_love_list'"
}

while getopts nhf: options
do
    case $options in
        n) rebuild=1;;
        f) musiclist=$OPTARG ;;
        h) show
         exit 1;;
        \?) show
            exit 1;;
    esac
done

if (( rebuild==1 ))
then
    if [ -r "$musiclist" ]
    then
        rm "$musiclist"
    fi
    {
        find $music_adrr -name "*.mp3"
        find $music_adrr -name "*.wma"
        find $music_adrr -name "*.flac"
        find $music_adrr -name "*.ape"
    }>"$musiclist"
elif [ ! -r "$musiclist" ]
then
    echo "playlist file '"$musiclist"' do not found!"
    show
    exit 1
fi

exec mplayer -playlist "$musiclist" -shuffle 