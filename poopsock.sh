#!/bin/bash

ffmpeg -re -stream_loop -1 -i poopsock.mp4 \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ar 44100 \
  -f flv rtmp://live.twitch.tv/app/your_stream_key_goes_here
