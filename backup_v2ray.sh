#! /bin/sh
export KSROOT=/koolshare
source $KSROOT/scripts/base.sh
alias echo_date='echo ...$(date +%Y...%m...%d...\ %X)...:'
eval `dbus export v2ray`
LOG_FILE=/tmp/upload/v2ray_log.txt

#......v2ray......
rm -rf /tmp/v2ray*
rm -rf $KSROOT/webs/files/v2ray*
# echo_date "..............." > $LOG_FILE
# echo_date "..........................................." >> $LOG_FILE
mkdir -p $KSROOT/webs/files
cd /tmp
mkdir v2ray
mkdir v2ray/bin
mkdir v2ray/scripts
mkdir v2ray/init.d
mkdir v2ray/webs
mkdir v2ray/webs/res
TARGET_FOLDER=/tmp/v2ray
cp $KSROOT/scripts/v2ray_install.sh $TARGET_FOLDER/install.sh
cp $KSROOT/scripts/uninstall_v2ray.sh $TARGET_FOLDER/uninstall.sh
cp $KSROOT/bin/v2ray $TARGET_FOLDER/bin/
cp $KSROOT/bin/v2ctl $TARGET_FOLDER/bin/
cp $KSROOT/bin/geoip.dat $TARGET_FOLDER/bin/
cp $KSROOT/bin/geosite.dat $TARGET_FOLDER/bin/
cp $KSROOT/scripts/v2ray_* $TARGET_FOLDER/scripts/
cp $KSROOT/init.d/S99v2ray.sh $TARGET_FOLDER/init.d
cp $KSROOT/webs/Module_v2ray.asp $TARGET_FOLDER/webs/
cp $KSROOT/webs/res/icon-v2ray* $TARGET_FOLDER/webs/res/
cp -r $KSROOT/v2ray $TARGET_FOLDER/
rm -rf $TARGET_FOLDER/v2ray/*.json

tar -czv -f $KSROOT/webs/files/v2ray.tar.gz v2ray/
rm -rf $TARGET_FOLDER
echo_date "..............................LEDE...........................~" >> $LOG_FILE
# http_response "$1"
# echo XU6J03M6 >> $LOG_FILE
sleep 4
# rm -rf $KSROOT/webs/files/v2ray*