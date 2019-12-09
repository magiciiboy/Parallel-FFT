tau_cc.sh -O0 fft_parallel.c -o fft -qopenmp
export OMP_NUM_THREADS=2
./fft