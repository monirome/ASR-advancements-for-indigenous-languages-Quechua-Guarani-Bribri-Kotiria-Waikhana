#!/bin/bash

# Define the base directory for data and model
DATA_DIR="./audio_path"
MODEL_NAME="{language}_model.pt"
RESULTS_DIR="./transcriptions"

# Docker command to run inference
docker run -it --network=host --name "fairseq_inference" --shm-size=8g --ulimit memlock=-1 \
-v $PWD/$DATA_DIR: -w /workspace/fairseq fairseq \
python3 infer.py \
/data/ \
--gen-subset "test" \
--path "/data/$MODEL_NAME" \
--results-path "/data/$RESULTS_DIR/" \
--w2l-decoder viterbi \
--scoring wer \
--batch-size 1 \
--num-workers 8 \
--task audio_finetuning \
--nbest 1 \
--post-process letter \
--criterion ctc \
--labels ltr \
--max-sample-size 300000000 \
--min-sample-size 16000 \
--eval-wer \
--cpu
