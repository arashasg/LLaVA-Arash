#!/bin/bash

# Activate conda from source
MINICONDA_DIR="$HOME/miniconda3"
source $MINICONDA_DIR/bin/activate

# Activate LLava env
conda activate llava

# Install gdown if not installed
if ! command -v gdown &> /dev/null; then
    echo "Installing gdown..."
    pip install gdown
fi

# Download the zip file using gdown
file_id="1atZSBBrAX54yYpxtVVW33zFvcnaHeFPy"
output_file="eval.zip"
gdown --id $file_id -O $output_file

# Extract the contents to a specific folder
extracted_folder="playground/data"
unzip $output_file -d $extracted_folder

# Clean up - remove the downloaded zip file
rm $output_file

echo "Download and extraction completed successfully."
pwd

