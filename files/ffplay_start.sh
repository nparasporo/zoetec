#!/bin/bash  
# -vf "drawtext=text='%{pts\:hms}':fontsize=48:fontcolor=white:box=1:boxborderw=6:boxcolor=black@0.75:x=(w-text_w)/2:y=h-text_h-20"  
# -vf "drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf:text='TEST- %{localtime\:%T}': fontcolor=white:box=1:boxcolor=black@0.7: x=70:y=400"  
# %{localtime\:%Y_%m_%d_%H_%M_%S}  
  
ffplay -fs -vf "drawtext=text='%{localtime\:%T}':fontsize=48:fontcolor=white:box=1:boxcolor=black@0.7:x=w-text_w:y=h-text_h-1040" udp://:4441 -f mjpeg -framerate 30 -x 1920 -y 1080
