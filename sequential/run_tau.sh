#!/bin/sh
module load papi
module load tau

export TAU_MAKEFILE=$TAU/Makefile.tau-intelomp-icpc-papi-ompt-pdt-openmp
export TAU_OPTIONS='-optVerbose'

# Remove all previous PAPI file
rm PAPI_*.txt

echo "PAPI--------------------"
sh ./papi_event.sh
echo "SUMMARY-----------------"
tau_exec -T OPENMP ./fft
echo "------------------------"
pprof
# echo "RAPL"
# echo "----------------------------"
# icc -Wall -O2 rapl-read.c -o rapl-read
# ./rapl-read | grep package-0
# ./rapl-read | grep package-0
# ./rapl-read | grep package-0
