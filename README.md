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

## Data and Models

The data/quechua directory includes:

dict.ltr.txt: Text file with the language dictionary.
lexicon.txt: Text file with the language lexicon.

