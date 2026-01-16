#!/bin/bash

set -e

# get the requirements.txt from github
BRANCH="9ADD"
curl -o requirements.txt https://raw.githubusercontent.com/martin-sicho/ADD-chemspace-denovo/$BRANCH/requirements.txt

# install the requirements
pip install -r requirements.txt

# mount Google Drive
python -c "from google.colab import drive; drive.mount('/content/drive')"
mkdir -p /content/drive/MyDrive/$BRANCH
cd /content/drive/MyDrive/$BRANCH

# clone the repository
git clone https://github.com/martin-sicho/ADD-chemspace-denovo.git
cd ADD-chemspace-denovo
git checkout $BRANCH

# download the models
cd denovo
curl -o models.tar.gz https://owncloud.cesnet.cz/index.php/s/LFYPllnHszp4BLL/download
tar -xvzf models.tar.gz
rm models.tar.gz
cd ..