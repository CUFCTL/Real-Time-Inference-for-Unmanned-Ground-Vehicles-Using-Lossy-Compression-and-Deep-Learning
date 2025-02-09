#!/bin/bash
#SBATCH --job-name lossless_compress_multiple
#SBATCH --nodes 1
#SBATCH --tasks-per-node 1
#SBATCH --cpus-per-task 1
#SBATCH --gpus-per-node v100:0
#SBATCH --mem 128gb
#SBATCH --time 7:00:00
#SBATCH --constraint interconnect_hdr

cd
source ./spack/share/spack/setup-env.sh

spack env activate spackEnvNameHere

cd path_to_python_file

source pythonEnvNameHere/bin/activate

python multiple_imgs_lossless_compress.py $1
