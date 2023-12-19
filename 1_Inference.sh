#!/bin/bash

# arguments
PATH_MODEL=$1
RESULTS_PATH=$2
DATA_PATH=$3

# docker run command
docker run -it --network=host --name "fairseq_inferesnces7s3s5dfsdf" --shm-size=8g --ulimit memlock=-1 \
-v $PWD/data:/data/ -w /workspace/fairseq fairseq \
python3 infer.py \
"$DATA_PATH" \
--gen-subset "test" \
--path "$PATH_MODEL" \
--results-path "$RESULTS_PATH" \
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

