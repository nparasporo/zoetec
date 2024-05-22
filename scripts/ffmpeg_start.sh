#!/bin/bash  
ffmpeg -f v4l2 -input_format mjpeg -framerate 30 -video_size 1920x1080 -i /dev/video0 -c:v copy -f mjpeg udp://127.0.0.1:4441
