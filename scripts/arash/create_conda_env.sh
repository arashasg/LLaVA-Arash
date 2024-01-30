#!/bin/bash

# Activate conda from source
MINICONDA_DIR="$HOME/miniconda3"
source $MINICONDA_DIR/bin/activate


# Create a conda environment named 'llava' with Python 3.10
conda create -n llava python=3.10 -y

# Activate the 'llava' conda environment
conda activate llava

# Upgrade pip to enable PEP 660 support
pip install --upgrade pip

# Install the project in editable mode
pip install -e .
