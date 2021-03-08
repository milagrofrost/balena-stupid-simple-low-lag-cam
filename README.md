## Stupid Simple Low Lag Cam

Balana image that runs a raspivid command for your raspberry pi.

Only allows one connection at a time.

Raspivid will restart quickly if connection is lost.


Defaults:
* CAM_WIDTH=1280
* CAM_HEIGHT=720
* CAM_FPS=15
* CAM_PORT=5001

You can change these values in balenaCloud in Fleet Variables or Device Variables to name a couple.  

To connect to the camera, run this command on client-side.

ffplay -fflags nobuffer -flags low_delay -framedrop -strict experimental -f h264 tcp://IP_OF_THE_RPI:5001
