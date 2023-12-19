# ASR-advancements-for-indigenous-languages-Quechua-Guarani-Bribri-Kotiria-Waikhana

This repository contains the code and models for performing inference with fine-tuned Automatic Speech Recognition (ASR) systems developed for Quechua, Guarani, Bribri, Kotiria and Wai'khana indigenous languages. The models were trained as part of the research presented in our paper "ASR advancements for indigenous languages: Quechua, Guarani, Bribri, Kotiria, and Wa’ikhana".

## Project Structure

- `/data`: This directory contains linguistic resources and pre-trained models for the Quechua language.
  - `/...`: Includes language-specific files such as dictionaries, lexicons, sample audio files, and model checkpoints.
- `/scripts`: Contains shell scripts to build Docker images and run inference processes.
- `/docker`: Holds the Dockerfile and associated scripts required to containerize the ASR system.

## Running Inference

To perform inference on an audio file using the pre-trained Quechua model, execute the following command:

```bash
./scripts/1_Inference.sh --input .../audio.wav

## Docker Usage

To build and run a Docker container for the ASR system:
Run the build script:

```bash
./0_build_docker.sh

To infer using the Docker container:

```bash
docker run -it --rm --name asr-quechua-inference wav2vec2-inference

## Available Models

### Quechua
[Download Quechua Model](https://data.mendeley.com/datasets/b3pnppjpf9/1)

### Guaraní
[Download Guaraní Model](https://data.mendeley.com/datasets/xd3h454tvd/1)

### Bribri
[Download Bribri Model](https://data.mendeley.com/datasets/8dn49kxpz5/1)

### Kotiria
[Download Kotiria Model](https://data.mendeley.com/datasets/xd3h454tvd/1)
*Note: Please verify if the link is correct, as it appears to be the same as the Guaraní model link.*

### Wa'ikhana
[Download Wa'ikhana Model](https://data.mendeley.com/datasets/yczy43n594/1)

