# Synthetic Image Generation, Preprocessing, and Flux Model Forward Pass

# Project Overview

This project demonstrates synthetic image generation using Stable Diffusion, preprocessing images for neural network input, and performing a forward pass using a simple Flux-based neural network in Julia.

# 1. Environment Setup

Python Environment (for Image Generation & Preprocessing)

Ensure you have Python installed (version 3.8+ recommended). Install the required dependencies using:
pip install torch torchvision diffusers pillow opencv-python

# Julia Environment (for Flux Model)

Ensure you have Julia installed (version 1.6+ recommended). Install required packages by running:

using Pkg
Pkg.add(["Flux", "Images", "FileIO"])

# 2. Approach

# Step 1: Synthetic Image Generation

We use Stable Diffusion (via the Hugging Face diffusers library) to generate images based on a text prompt.

Three images are generated and saved as image_1.png, image_2.png, and image_3.png.

# Step 2: Image Preprocessing

Images are resized to 224x224 pixels.

They are converted to normalized tensors (pixel values between 0 and 1).

Preprocessed images are saved for further processing.

# Step 3: Flux Model Forward Pass

A simple Flux model (Julia) is created with convolutional and dense layers.

One preprocessed image is loaded and passed through the model.

The model's output is printed.

# 3. Challenges & Assumptions

# Challenges Encountered:

Hardware Limitations: Stable Diffusion requires a GPU for fast image generation.

Julia’s Learning Curve: Understanding Flux and proper image input formatting was a challenge.

# Assumptions:

Users have access to Python and Julia environments.

If GPU is unavailable, pre-generated images can be used instead.

# 4. Images & Outputs

# Generated Images:

Images generated using Stable Diffusion are stored in the /images/ directory.

If running locally, regenerate them by executing image_generation.py.

# Preprocessed Images:

Normalized and resized images are stored in /preprocessed_images/.

# 5 . File structure

├── images/                   # Contains generated images
├── preprocessed_images/      # Contains resized & normalized images
├── image_generation.py       # Python script for Stable Diffusion
├── image_preprocessing.py    # Python script for preprocessing
├── flux_model.jl             # Julia script for Flux forward pass
├── README.md                 # Project documentation
