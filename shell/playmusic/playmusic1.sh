#!/bin/bash
rebuild=
musiclist=music_list

show()
{
    echo "Usage: playmusic [-n -f playlist]"
    echo " n    rebuild playlist file"
    echo " f    read playlist by user,default auto read 'music_list'"
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
        find ~/音乐/CloudMusic/ -name "*.mp3"
        find ~/音乐/CloudMusic/ -name "*.wma"
        find ~/音乐/CloudMusic/ -name "*.flac"
        find ~/音乐/CloudMusic/ -name "*.ape"
    }>"$musiclist"
elif [ ! -r "$musiclist" ]
then
    echo "playlist file '"$musiclist"' do not found!"
    show
    exit 1
fi

exec mplayer -playlist "$musiclist" -shuffle 