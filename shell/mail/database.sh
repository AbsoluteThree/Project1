#!/bin/bash
filename=$(date +%Y%m%d-%Hh%Mmin%Ss)
mysqldump -uroot -proot --all-database | gzip >/tmp/$filename.sql.gz
zip -r /tmp/$filename.zip /tmp/$filename.sql.gz -Punzippassword
uuencode /tmp/$filename.zip $filename.zip | mail -s "MySQL All Database" my@email.com
rm -rf /tmp/$filename.zip /tmp/$filename.sql.gz

:<<!
此Shell Script会自动使用用户名root，密码root导出所有数据库到/tmp，并且使用gzip压缩，文件名以执行该Shell Script的时间命名，然后使用zip压缩，设置解压密码为unzippassword，再用uuencode编码，mail发送到my@email.com，最后删除导出的数据库文件。

写好该Shell Script，保存到一个地方。并且赋予执行(x)权限。
!