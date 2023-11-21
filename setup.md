#
####
#
conda create -y -n pykafka3.7 -c conda-forge python=3.7 conda-pack
conda activate pykafka3.7
conda init bash
conda pack -f -o pykafka3.7-20221125.tar.gz

#
#### Path entry for conda package manager
#

mamba env update -f venv_pykafka.yml --prune

#
#### Install Package in Virtual Environment
#

conda install -c conda-forge python=3.7 conda-pack

#
# List Conda Virtual Environments
#
conda env list

#
#### Activate Virtual Env
#
conda activate pykafka3.7

#
# List Conda Virtual Environments Libraries
#
conda list

#
#
#
conda env remove --name pykafka3.7

