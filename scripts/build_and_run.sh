#!/bin/bash

set -e

source /opt/ros/$ROS_DISTRO/setup.bash
source /root/ws/devel/setup.bash

WD=$PWD
WS=$WD/ws/
WS_SRC=$WS/src/

cd $WS

export G2O_ROOT=/opt/ros/$ROS_DISTRO/ 
catkin_make -DCMAKE_BUILD_TYPE=Release

roslaunch dvo_benchmark benchmark.launch dataset:=/dataset

