#!/usr/bin/env bash

# GW150914_data0_1126259462-3885767_generation
# PARENTS 
# CHILDREN GW150914_data0_1126259462-3885767_sampling GW150914_data0_1126259462-3885767_importance_sampling
if [[ "GW150914_data0_1126259462-3885767_generation" == *"$1"* ]]; then
    echo "Running: /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_generation 03_inference/outdir_GW150914/GW150914_config_complete.ini --label GW150914_data0_1126259462-3885767_generation --idx 0 --trigger-time 1126259462.3885767 --outdir 03_inference/outdir_GW150914"
    /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_generation 03_inference/outdir_GW150914/GW150914_config_complete.ini --label GW150914_data0_1126259462-3885767_generation --idx 0 --trigger-time 1126259462.3885767 --outdir 03_inference/outdir_GW150914
fi

# GW150914_data0_1126259462-3885767_sampling
# PARENTS GW150914_data0_1126259462-3885767_generation
# CHILDREN GW150914_data0_1126259462-3885767_importance_sampling
if [[ "GW150914_data0_1126259462-3885767_sampling" == *"$1"* ]]; then
    echo "Running: /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_sampling 03_inference/outdir_GW150914/GW150914_config_complete.ini --label GW150914_data0_1126259462-3885767_sampling --event-data-file 03_inference/outdir_GW150914/data/GW150914_data0_1126259462-3885767_generation_event_data.hdf5 --outdir 03_inference/outdir_GW150914"
    /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_sampling 03_inference/outdir_GW150914/GW150914_config_complete.ini --label GW150914_data0_1126259462-3885767_sampling --event-data-file 03_inference/outdir_GW150914/data/GW150914_data0_1126259462-3885767_generation_event_data.hdf5 --outdir 03_inference/outdir_GW150914
fi

# GW150914_data0_1126259462-3885767_importance_sampling
# PARENTS GW150914_data0_1126259462-3885767_sampling GW150914_data0_1126259462-3885767_generation
# CHILDREN GW150914_data0_1126259462-3885767_importance_sampling_plot
if [[ "GW150914_data0_1126259462-3885767_importance_sampling" == *"$1"* ]]; then
    echo "Running: /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_importance_sampling 03_inference/outdir_GW150914/GW150914_config_complete.ini --outdir 03_inference/outdir_GW150914 --label GW150914_data0_1126259462-3885767_importance_sampling --proposal-samples-file 03_inference/outdir_GW150914/result/GW150914_data0_1126259462-3885767_sampling.hdf5 --event-data-file 03_inference/outdir_GW150914/data/GW150914_data0_1126259462-3885767_generation_event_data.hdf5"
    /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_importance_sampling 03_inference/outdir_GW150914/GW150914_config_complete.ini --outdir 03_inference/outdir_GW150914 --label GW150914_data0_1126259462-3885767_importance_sampling --proposal-samples-file 03_inference/outdir_GW150914/result/GW150914_data0_1126259462-3885767_sampling.hdf5 --event-data-file 03_inference/outdir_GW150914/data/GW150914_data0_1126259462-3885767_generation_event_data.hdf5
fi

# GW150914_data0_1126259462-3885767_importance_sampling_plot
# PARENTS GW150914_data0_1126259462-3885767_importance_sampling
# CHILDREN 
if [[ "GW150914_data0_1126259462-3885767_importance_sampling_plot" == *"$1"* ]]; then
    echo "Running: /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_plot --label GW150914_data0_1126259462-3885767_importance_sampling_plot --result 03_inference/outdir_GW150914/result/GW150914_data0_1126259462-3885767_importance_sampling.hdf5 --outdir 03_inference/outdir_GW150914/result --corner --weights --log_probs"
    /home/yyyz/miniconda3/envs/dingo/bin/dingo_pipe_plot --label GW150914_data0_1126259462-3885767_importance_sampling_plot --result 03_inference/outdir_GW150914/result/GW150914_data0_1126259462-3885767_importance_sampling.hdf5 --outdir 03_inference/outdir_GW150914/result --corner --weights --log_probs
fi

