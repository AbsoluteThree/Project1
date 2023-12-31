#!/bin/bash
filename=$(date +%Y%m%d-%Hh%Mmin%Ss)
zip -r /tmp/$filename.zip /home/ubuntu/ArtificialIntelligence -Punzippassword
uuencode /tmp/$filename.zip $filename.zip | mail -s "My Vscode Database" 18586750391@163.com
rm -rf /tmp/$filename.zip 