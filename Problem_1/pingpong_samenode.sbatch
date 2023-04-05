#!/bin/bash
#SBATCH --partition=oucspdn_cpu
#SBATCH --ntasks-per-node=2
#SBATCH --ntasks=2
#
#SBATCH --time=00:15:00
#
# --------------------- Change the items below here! ---------------------
#
#SBATCH --mail-user=mariadoan247@ou.edu
#SBATCH --mail-type=ALL
#
#SBATCH --job-name=hw5prob1_same
#
#SBATCH --chdir=/home/oucspdn086/Doan_Maria_Project_5/Problem_1
#SBATCH --output=/home/oucspdn086/Doan_Maria_Project_5/Problem_1/_P5-1_same_%J_stdout.txt
#SBATCH --error=/home/oucspdn086/Doan_Maria_Project_5/Problem_1/_P5-1_same_%J_stderr.txt
#
#################################################

echo "Working directory:"
pwd
echo ""

module load intel
module load GCC

mpirun -n 2 ./pingpong_MPI 1000000 time_1M_same.txt
# add for other sizes
# mpirun -n 2 ./pingpong_MPI 2000000 time_1M_same.txt
# mpirun -n 2 ./pingpong_MPI 4000000 time_1M_same.txt
# mpirun -n 2 ./pingpong_MPI 8000000 time_1M_same.txt