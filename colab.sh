#!/bin/bash

set -e

# set branch name to checkout
BRANCH=${BRANCH:-main}

# create the directory in Google Drive
mkdir -p /content/drive/MyDrive/ADD-$BRANCH
cd /content/drive/MyDrive/ADD-$BRANCH

# clone the repository if not already present
if [ -d "ADD-chemspace-denovo" ]; then
    echo "Repository already exists. Skipping clone."
else
    echo "Cloning repository..."
    git clone https://github.com/martin-sicho/ADD-chemspace-denovo.git
fi

# install the requirements
cd ADD-chemspace-denovo
git checkout $BRANCH
pip install -r requirements.txt

# download the models
cd denovo
curl -o models.tar.gz https://owncloud.cesnet.cz/index.php/s/LFYPllnHszp4BLL/download
tar -xvzf models.tar.gz
rm models.tar.gz
cd ..

echo "Setup complete."