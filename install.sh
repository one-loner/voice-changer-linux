#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
apt update
apt install sox ffmpeg
mkdir /opt/sox/
cp noise.prof /opt/sox/noise.prof
cp vmh /bin/vmh
