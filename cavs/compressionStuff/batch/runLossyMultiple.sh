#!/bin/bash
#SBATCH --job-name lossy_compress_multiple
#SBATCH --nodes 1
#SBATCH --tasks-per-node 1
#SBATCH --cpus-per-task 1
#SBATCH --gpus-per-node v100:0
#SBATCH --mem 128gb
#SBATCH --time 8:00:00
#SBATCH --constraint interconnect_hdr

cd
source ./spack/share/spack/setup-env.sh

spack env activate your_spack_env_here

cd path_to_python_file_here

source python_env_name_here/bin/activate

python multiple_imgs_lossy_compress.py $1
