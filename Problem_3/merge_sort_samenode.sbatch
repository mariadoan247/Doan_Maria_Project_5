#!/bin/bash
#SBATCH --partition=oucspdn_cpu
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=2
#
#SBATCH --time=00:15:00
#SBATCH --job-name=hw5prob3
#
# --------------------- Change the items below here! ---------------------
#
#SBATCH --mail-user=mariadoan247@ou.edu
#SBATCH --mail-type=ALL
#
#SBATCH --chdir=/home/oucspdn086/Doan_Maria_Project_5/Problem_3
#SBATCH --output=/home/oucspdn086/Doan_Maria_Project_5/Problem_3/_P5-3_%J_stdout.txt
#SBATCH --error=/home/oucspdn086/Doan_Maria_Project_5/Problem_3/_P5-3_%J_stderr.txt

#################################################

echo "Working directory:"
pwd
echo ""

module load intel/2022.2
module load OpenMPI/4.1.4-GCC-11.3.0
# module load intel
# module load OpenMPI

mpirun -n 2 ./merge_sort_MPI 262144 ../test-data/vec1_2^18.csv result_2_same_18.csv time_2_same_18.csv
# add more here ...