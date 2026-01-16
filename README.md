# Chemical Space and De Novo Drug Design Tutorial

*Martin Šícho*

## Install the Tools

### Locally on Command Line 

Run the following commands in your terminal to set up and activate the environment:

```bash
sudo apt-get install libxrender1 # WSL users, can end with an error but it does not matter
conda create -n denovo python=3.12 -y
conda activate denovo
pip install -r requirements.txt
```

### Google Colab [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://githubtocolab.com/martin-sicho/ADD-chemspace-denovo/)

This is a more elaborate way, but it will give you access to a GPU-enabled environment if you have a Google account (use anonymous window in the browser to not leave a trace on the workstation). Click the banner above and once the repository is open select the desired notebook from the list. The first thing you want to do when the notebook opens is to change the runtime type to GPU:

- Go to `Runtime` -> `Change runtime type`
- Select `GPU` from the `Hardware accelerator` dropdown menu
- Click `Save`

Now you can install the required packages by running the first code cell in the notebook.

```bash
!wget https://raw.githubusercontent.com/martin-sicho/ADD-chemspace-denovo/main/colab.sh
!bash colab.sh
```

The script should do all your installations. After that, you can run the other code cells in the notebook. You can verify that you are in the correct working directory by running:

```python
import os
os.getcwd()
```

And you can change it if needed:

```python
os.chdir('/path/anywhere/you/want')
```

## Follow Tutorials

Follow the `README.md` file directions in each folder:

- [Chemical Space Visualization](./chemspace/README.md)
- [De Novo Drug Design](./denovo/README.md)
- [CReM-based de novo design approaches](./crem/)

You may have to run some extra commands to download and set up data for each tutorial. It is recommended that you run the Jupyter Lab/Notebook server in the current folder (repository root) for easy navigation through files and command line access:

```bash
jupyter-lab
```

or

```bash
jupyter-notebook
```
