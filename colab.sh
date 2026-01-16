#!/bin/bash

set -e

# get the requirements.txt from github
BRANCH="9ADD"
curl -o requirements.txt https://raw.githubusercontent.com/martin-sicho/ADD-chemspace-denovo/9ADD/requirements.txt

# install the requirements
pip install -r requirements.txt