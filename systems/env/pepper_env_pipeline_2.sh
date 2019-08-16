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

export ORCHESTRATOR_CONFIG="${prefix}/share/esiaf_orchestrator/config/eval_pipeline_2.yaml"

export WAV_PLAYER_CONFIG="${prefix}/share/esiaf_wav_player/config/eval_pipeline_2.yaml"
export AUDIO_SEGMENTER_CONFIG="${prefix}/share/audio_segmenter/config/eval_pipeline_2.cfg"
export POCKETSPHINX_CONFIG="${prefix}/share/esiaf_pocketsphinx/config/eval_pipeline_2.yaml"
