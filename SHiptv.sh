#!/bin/sh

#echo Welcome to this script
ping 127.0.0.1 -c 2 > /dev/null
echo This script is only applicable to merlin modified firmware, please do not run this script for other firmware
ping 127.0.0.1 -c 2 > /dev/null
echo This prompt is kept for 10 seconds. If you are not merlin to update the firmware, please press Ctrl + C to terminate this script immediately.
ping 127.0.0.1 -c 10 > /dev/null
echo This script applies to Shanghai Telecom's IPTV that requires AB certification. Please modify the script for other regions as required.
ping 127.0.0.1 -c 2 > /dev/null
echo Please make sure the light cat has been set up before use
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#Script prompt
echo is increasing the IPTV startup self-startup script
#Move to the script directory
cd /jffs/scripts
#Delete the previous script
echo is deleting old files
rm -rf wan-start*
#Download self-starting script
echo is downloading a new file
wget -q --no-check-certificate https://raw.githubusercontent.com/katehoang1989/SH-4K-IPTV-Merlin/master/wan-start
#Setting permissions
chmod -R 0755 wan-start
#Complete tips
echo success

#Delayed run
ping 127.0.0.1 -c 2 > /dev/null
# 空 行
echo

#Script prompt
echo is adding IPTV run script
#Move to the script directory
cd /jffs/configs/dnsmasq.d
#Delete the old dnsmasq configuration file
echo is deleting old files
rm -rf dns.conf
#Download boot run script
echo is downloading a new file
wget -q --no-check-certificate https://raw.githubusercontent.com/katehoang1989/SH-4K-IPTV-Merlin/master/dns.conf
#设置权限
chmod -R 0644 dns.conf
#完成提示
echo 成功

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#返回默认目录
cd

#提示成功
ping 127.0.0.1 -c 2 > /dev/null
echo The script is completed. If the light cat has been set up, you can connect the IPTV to any interface of Lan1-4.

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#运行提示
echo The router is being restarted, please restart the IPTV after the router is successfully restarted
#延迟运行
ping 127.0.0.1 -c 2 > /dev/null

#Restart the router
reboot > /dev/null
