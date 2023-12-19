# ASR-advancements-for-indigenous-languages-Quechua-Guarani-Bribri-Kotiria-Waikhana

This repository contains the code and models for performing inference with fine-tuned Automatic Speech Recognition (ASR) systems developed for Quechua, Guarani, Bribri, Kotiria and Wai'khana indigenous languages. The models were trained as part of the research presented in our paper "ASR advancements for indigenous languages: Quechua, Guarani, Bribri, Kotiria, and Wa’ikhana".

## Project Structure

- `/data`: This directory contains linguistic resources and pre-trained models for the Quechua language.
  - `/...`: Includes language-specific files such as dictionaries, lexicons, sample audio files, and model checkpoints.
- `/scripts`: Contains shell scripts to build Docker images and run inference processes.
- `/docker`: Holds the Dockerfile and associated scripts required to containerize the ASR system.

## Available Models

This repository contains fine-tuned models for the Quechua, Guarani, Bribri, Kotiria, and Wa'ikhana languages, which are necessary for running inferences. These models are available for download at the following Mendeley Data links:

- Quechua: [Download Quechua Model](https://data.mendeley.com/datasets/b3pnppjpf9/1)
- Guaraní: [Download Guaraní Model](https://data.mendeley.com/datasets/hcw7vhydpv/1)
- Bribri: [Download Bribri Model](https://data.mendeley.com/datasets/8dn49kxpz5/1)
- Kotiria: [Download Kotiria Model](https://data.mendeley.com/datasets/xd3h454tvd/1)
- Wa'ikhana: [Download Wa'ikhana Model](https://data.mendeley.com/datasets/yczy43n594/1)

## Running Inference

First, build the Docker container using the provided script. This prepares the necessary environment, including all dependencies.
   ```bash
   ./0_build_docker.sh
   ``bash

To infer using the Docker container:
   ``bash
    Docker run -it --rm --name asr-inference wav2vec2-inference
   ``bash

Perform inference on an audio file using the following command
   ```bash
   ./scripts/1_Inference.sh --input audio_path/audio.wav
   ``bash
