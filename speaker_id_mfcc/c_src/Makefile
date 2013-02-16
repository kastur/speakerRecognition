VERSION=5
INCLUDE=/home/k/Qualcomm/HEXAGON_Tools/5.0.07/gnu/hexagon/include/

fft_test:
	gcc codegen/lib/fi_fft/*.c main_fft.c -o fi_fft -lm

fft_test_hexagon:
	hexagon-gcc -mv5 codegen/lib/fi_fft/*.c main_fft.c -o fi_fft_hexagon_opt -lm

sim_with_profile_fft:
	hexagon-sim -mv5 --timing fi_fft_hexagon_opt

mfcc_test:
	gcc codegen/lib/fi_mfcc/*.c main_mfcc_fi.c

mfcc_bare_x86:
	gcc -g -pg main_mfcc_x86.c codegen/lib/fi_mfcc/*.c -o mfcc_bare_x86 -lm

mfcc_bare_x86_opt:
	gcc -O3 main_mfcc_x86.c codegen/lib/fi_mfcc/*.c -o mfcc_bare_x86 -lm

mfcc_bare_hexagon_opt:
	hexagon-gcc -mv$(VERSION) -O3 -I$(INCLUDE) main_mfcc_bare.c codegen/lib/fi_mfcc/*.c -o mfcc_bare_opt -lhexagon -lm

sim_with_profile:
	hexagon-sim -mv5 --timing --profile mfcc_bare

sim_with_profile_opt:
	hexagon-sim -mv5 mfcc_bare_opt

profile:
	hexagon-gprof mfcc_bare gmon.t*

clean:
	rm -f *.o mfcc_bare stats.txt gmon.*

