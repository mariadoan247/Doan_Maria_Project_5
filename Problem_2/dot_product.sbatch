#!/bin/bash
#SBATCH --partition=oucspdn_cpu
#SBATCH --ntasks-per-node=8
#SBATCH --ntasks=8
#
#SBATCH --time=00:15:00
#
# --------------------- Change the items below here! ---------------------
#
#SBATCH --mail-user=mariadoan247@ou.edu
#SBATCH --mail-type=ALL
#
#SBATCH --job-name=hw5prob2
#
#SBATCH --chdir=/home/oucspdn086/Doan_Maria_Project_5/Problem_2
#SBATCH --output=/home/oucspdn086/Doan_Maria_Project_5/Problem_2/_P5-2_%J_stdout.txt
#SBATCH --error=/home/oucspdn086/Doan_Maria_Project_5/Problem_2/_P5-2_%J_stderr.txt
#
#################################################

echo "Working directory:"
pwd
echo ""

module load intel/2022.2
module load OpenMPI/4.1.4-GCC-11.3.0
# module load intel
# module load GCC
# module load OpenMPI

mpirun -n 2 ./dot_product_MPI 262144 ../../../test_data/Vectors/vec1_2^18.csv ../../../test_data/Vectors/vec2_2^18.csv result_2^18.csv time_2^18.csv
# add other sizes
mpirun -n 2 ./dotprod_serial 524288 ../../../test_data/Vectors/vec1_2^19.csv ../../../test_data/Vectors/vec2_2^19.csv result_2^19.csv time_2^19.csv
mpirun -n 2 ./dotprod_serial 1048576 ../../../test_data/Vectors/vec1_2^20.csv ../../../test_data/Vectors/vec2_2^20.csv result_2^20.csv time_2^20.csv