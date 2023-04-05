#!/bin/bash
#SBATCH --partition=oucspdn_cpu
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=1
#
#SBATCH --time=00:15:00
#SBATCH --job-name=hw5prob3
#
# --------------------- Change the items below here! ---------------------
#
#SBATCH --mail-user=shaw.jessica1999@ou.edu
#SBATCH --mail-type=ALL
#
#SBATCH --chdir=/home/oucspdnxxx/   ... /Project_5/Problem_3
#SBATCH --output=/home/oucspdnxxx/  ... /Project_5/Problem_3/_P5-3_%J_stdout.txt
#SBATCH --error=/home/oucspdnxxx/   ... /Project_5/Problem_3/_P5-3_%J_stderr.txt

#################################################

echo "Working directory:"
pwd
echo ""

module load intel

mpirun -n 2 ./merge_sort_MPI 262144 ../test-data/vec1_2^18.csv result_2_diff_18.csv time_2_diff_18.csv
# add more here ...