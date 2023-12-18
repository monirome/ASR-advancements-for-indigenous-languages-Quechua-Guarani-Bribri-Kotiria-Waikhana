# ASR-advancements-for-indigenous-languages-Quechua-Guarani-Bribri-Kotiria-Waikhana

This repository contains the code and models for performing inference with fine-tuned Automatic Speech Recognition (ASR) systems developed for Quechua, Guarani, Bribri, Kotiria and Wai'khana indigenous languages. The models were trained as part of the research presented in our paper "ASR advancements for indigenous languages: Quechua, Guarani, Bribri, Kotiria, and Wa’ikhana".

## Project Structure

- `/data`: Contains data and pre-trained models necessary for inference.
- `/scripts`: Contains inference scripts and other utilities.
- `/docker`: Contains Docker-related files for containerization.

### Docker Usage

A Dockerfile is provided to containerize the inference environment. To build and run the Docker container, use the following commands:

docker build -t wav2vec2-inference .
docker run -it --rm wav2vec2-inference

## Setup

To set up the project, follow these steps:

1. Clone this repository:
   
   ```bash
   git clone https://github.com/monirome/asr-indigenous-languages.git

2. Running Inference

To run inference, use the infer.py script located in the /scripts directory:

   ```bash
python scripts/infer.py --input your_input_file.wav`

