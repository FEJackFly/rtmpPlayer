#!/bin/sh
rtspUrl1="rtsp://admin:jd123456@172.16.154.62:554/cam/realmonitor?channel=12&subtype=1"
rtspUrl2="rtsp://admin:jd123456@172.16.154.62:554/cam/realmonitor?channel=11&subtype=1"
rtspUrl3="rtsp://admin:jd123456@172.16.154.62:554/cam/realmonitor?channel=10&subtype=1"
rtspUrl4="rtsp://admin:jidian123@172.16.151.230:554/Streaming/tracks/1001?starttime=20190827t220910z&endtime=20190827t221030z"


ffmpeg -re  -rtsp_transport tcp -i $rtspUrl1 -vcodec libx264 -vprofile baseline -acodec aac -ar 44100 -strict -2 -ac 1 -f flv -s 1280x720 -q 10 rtmp://localhost:1935/live/120 &
# ffmpeg -re  -rtsp_transport tcp -i $rtspUrl2 -vcodec libx264 -vprofile baseline -acodec aac -ar 44100 -strict -2 -ac 1 -f flv -s 1280x720 -q 10 rtmp://localhost:1935/live/2 &
# ffmpeg -re  -rtsp_transport tcp -i $rtspUrl3 -vcodec libx264 -vprofile baseline -acodec aac -ar 44100 -strict -2 -ac 1 -f flv -s 1280x720 -q 10 rtmp://localhost:1935/live/3 &
# ffmpeg -re  -rtsp_transport tcp -i $rtspUrl4 -vcodec libx264 -vprofile baseline -acodec aac -ar 44100 -strict -2 -ac 1 -f flv -s 1280x720 -q 10 rtmp://localhost:1935/live/4 &

