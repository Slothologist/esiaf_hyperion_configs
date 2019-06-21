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


##### config files

export ORCHESTRATOR_CONFIG="${prefix}/share/esiaf_orchestrator/config/basic_orchestrator_config.yaml"

export GRABBER_CONFIG="${prefix}/share/esiaf_ros/config/basic_grabber_config.cfg"
export PLAYER_CONFIG="${prefix}/share/esiaf_ros/config/basic_player_config.cfg"
export RECORDER_CONFIG="${prefix}/share/esiaf_ros/config/basic_recorder_config.cfg"
export SPLITTER_CONFIG="${prefix}/share/esiaf_channel_utils/config/basic_splitter_config.yaml"
export WAV_PLAYER_CONFIG="${prefix}/share/esiaf_wav_player/config/basic_wav_config.yaml"

export AUDIO_SEGMENTER_CONFIG="${prefix}/share/audio_segmenter/config/default.cfg"
export POCKETSPHINX_CONFIG="${prefix}/share/esiaf_pocketsphinx/config/basic_ps_config.yaml"
export DOA_CONFIG="${prefix}/share/esiaf_doa/config/basic_doa_config.yaml"
export EMOTION_REC_CONFIG="${prefix}/share/esiaf_emotion_recognition/config/basic_emotion_rec_config.yaml"
