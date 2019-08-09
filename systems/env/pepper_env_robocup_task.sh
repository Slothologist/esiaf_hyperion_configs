#!/usr/bin/env bash


export prefix="/vol/systems/speech-pipeline-melodic/"

export robot='pepper-robot'
export machine=`hostname -s`

export ROS_MASTER_URI=http://$robot:11311

alias ros_env="source ${prefix}/setup.bash"

export PATH="${prefix}/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:${prefix}/lib/python2.7/site_packages


##### config files

export ORCHESTRATOR_CONFIG="${prefix}/share/esiaf_orchestrator/config/eval_robocup_task_config.yaml"

export GRABBER_CONFIG="${prefix}/share/esiaf_ros/config/pepper_robot_grabber.cfg"
export SPLITTER_CONFIG="${prefix}/share/esiaf_channel_utils/config/pepper_robot_splitter_config.yaml"

export AUDIO_SEGMENTER_CONFIG="${prefix}/share/audio_segmenter/config/pepper_robot.cfg"
export POCKETSPHINX_CONFIG="${prefix}/share/esiaf_pocketsphinx/config/basic_ps_config.yaml"
export DOA_CONFIG="${prefix}/share/esiaf_doa/config/pepper_robot_config.yaml"
