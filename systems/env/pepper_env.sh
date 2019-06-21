#!/usr/bin/env bash


export prefix="/vol/systems/speech-pipeline-melodic/"

if [ -z "$SIMMODE" ]; then
    export pepper=`hostname -s`
else
    export pepper='pepper-robot'
fi

export ROS_MASTER_URI=http://$pepper:11311

alias ros_env="source ${prefix}/setup.bash"

export PATH="${prefix}/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:${prefix}/lib/python2.7/site_packages