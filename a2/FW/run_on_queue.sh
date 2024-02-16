#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_fw

## Output and error files
#PBS -o run_fw.out
#PBS -e run_fw.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd <FIX_PATH>
export OMP_NUM_THREADS=8
./fw <SIZE>
# ./fw_sr <SIZE> <BSIZE>
# ./fw_tiled <SIZE> <BSIZE>
