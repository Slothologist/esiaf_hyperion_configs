#!/usr/bin/env bash


export prefix="/vol/systems/speech-pipeline-melodic/"

if [ -z "$SIMMODE" ]; then
    export pepper=`hostname -s`
else
    export pepper='pepper-robot'
fi

export robot=$pepper
export machine=$robot

export ROS_MASTER_URI=http://$robot:11311

alias ros_env="source ${prefix}/setup.bash"

export PATH="${prefix}/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:${prefix}/lib/python2.7/site_packages


##### config files

export VDEMO_PSA_CONFIG="/home/rfeldhans/programming/audio/ma_eval_cost/pipeline1_psa_config.conf"
export PSA_DICT="${prefix}/share/pocketsphinx/tobiDic_ger.dic"
export ALSA_DEVICE="default"
export PSA_MODEL="${prefix}/share/pocketsphinx/model/de-de/de-de"
