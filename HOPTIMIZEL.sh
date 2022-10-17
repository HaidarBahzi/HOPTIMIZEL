#!/bin/bash

#Author : Haidar Bahzi
#Github : haidarbahzi

echo
echo -e "\e[31mHOPTIMIZEL\e[0m"
echo Linux optimizer created by Haidar Bahzi
echo -e https://github.com/haidarbahzi/HOPTIMIZEL
echo
echo Menu :
echo 1. Clear Temp Files
echo 2. Repair System Files
echo 3. Repair missing update
echo 4. Update Linux
echo 5. System Info
echo
read -p "choose : " Number
echo "OK $Number selected"

case $Number in

1)
echo Deleting temp files...
sleep 2
sudo rm -rf /tmp/*
sleep 2
echo Temp files has been deleted
sleep 2
;;

2)
read -p "Choose your partition location : " Partition
echo $Partition is repairing...
sleep 2
sudo umount $Partition
sleep 2
sudo fsck -p $Partition
sleep 2
sudo mount $Partition
echo Partition $Partition has been repaired
echo 2
;;

3)
echo Repairing missing update...
sleep 2
sudo apt-get update --fix-missing
sleep 2
sudo apt-get install -f
sleep 2
echo The missing update has been repaired
sleep 2
;;

4)
echo Updating Linux...
sleep 2
sudo apt update
sleep 2
echo Linux has been updated
sleep 2
;;

5)
echo Your System Information
sleep 2
sudo lshw -short
sleep 2
;;
esac


