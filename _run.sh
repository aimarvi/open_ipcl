#!/bin/bash

#SBATCH -t 2-00:00:00
#SBATCH -c 20
#SBATCH --mem=40GB
#SBATCH --mail-user=amarvi@mit.edu
#SBATCH --mail-type=TIME_LIMIT,FAIL,END
#SBATCH --job-name=ipcl_test
#SBATCH --gres=gpu:1
#SBATCH --constraint=ampere
#SBATCH --output=runlog/run%j.out
#SBATCH --partition=normal

python train_ipcl.py -a alexnet_gn --gpu 0 /om2/user/amarvi/open_ipcl/data/imagenet/
