#!/bin/bash

python /root/motion_detection.py &

cd /root/dist
python -m SimpleHTTPServer 8080 &

xset s noblank
xset s off
xset -dpms

cp -rp ~/.config/chromium /tmp/

sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' /tmp/chromium/Default/Preferences
sed -i 's/"shutdown_cleanly": false/"shutdown_cleanly": true/' /tmp/chromium/Default/Preferences
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /tmp/chromium/Default/Preferences
sed -i 's/"shutdown_cleanly":false/"shutdown_cleanly":true/' /tmp/chromium/Default/Preferences


sed -i 's/"exit_type": "Crashed"/"exit_type": "Normal"/' /tmp/chromium/Default/Preferences
sed -i 's/"exit_type": "SessionEnded"/"exit_type": "Normal"/' /tmp/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /tmp/chromium/Default/Preferences
sed -i 's/"exit_type":"SessionEnded"/"exit_type":"Normal"/' /tmp/chromium/Default/Preferences

unclutter -idle 0.5 -root -display :0 &

/usr/bin/chromium-browser\
 --kiosk\
 --noerrdialogs\
 --start-maximized\
 --disable-infobars\
 --disable-translate\
 --disable-session-crashed-bubble\
 --disable-web-security\
 --no-sandbox\
 --window-position=0,0\
 --window-size=1080,1920\
 --user-data-dir=/tmp/chromium\
 http://localhost:8080 &

