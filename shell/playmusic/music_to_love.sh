#!/bin/bash
paths=(
/home/ubuntu/音乐/CloudMusic/喜欢你-陈洁仪-10308647.mp3 
/home/ubuntu/音乐/CloudMusic/送亲-张勇-79390958.mp3    











) # 定义包含多个路径的数组
 
for path in ${paths[@]} ; do
    cp $path /home/ubuntu/音乐/我喜欢
done