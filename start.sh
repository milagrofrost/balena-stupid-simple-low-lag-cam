#!/bin/bash

set -e

CAM_WIDTH=${CAM_WIDTH:-1280}
CAM_HEIGHT=${CAM_HEIGHT:-720}
CAM_FPS=${CAM_FPS:-15}
CAM_PORT=${CAM_PORT:-5001}

while true; do raspivid -t 0 -w $CAM_WIDTH -h $CAM_HEIGHT -fps $CAM_FPS -n -l -o tcp://0.0.0.0:$CAM_PORT; done
