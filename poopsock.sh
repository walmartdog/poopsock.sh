#!/bin/bash

ffmpeg -re -stream_loop -1 -i poopsock.mp4 \
  -c:v copy -c:a copy \
  -f flv rtmp://live.twitch.tv/app/app/your_stream_key_goes_here
