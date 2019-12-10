#! /bin/bash
#
module load tau
tau_cc.sh -O0 fft_serial.c -o fft -qopenmp
./fft