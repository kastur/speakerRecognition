VERSION=5
OPTIMIZE=2
INCLUDE=/home/k/Qualcomm/HEXAGON_Tools/5.0.07/gnu/hexagon/include/
CFLAGS= -static -Os -O2 -fno-inline -fomit-frame-pointer -fno-zero-initialized-in-bss  -fmerge-constants # -fPIC

gmm_test_matlab:
	gcc $(CFLAGS) codegen/lib/gaussmixp_unloop/*.c gmm_standalone_matlab.c -o gmm_matlab -lm

gmm_test_standalone:
	gcc $(CFLAGS) gmm_standalone.c -o gmm_standalone -lm

gmm_hexagon_standalone:
	hexagon-clang -mv5 $(CFLAGS) gmm_standalone.c -o gmm_standalone_hexagon -lm -lhexagon

clean:
	rm -f *.o gmm_matlab gmm_standalone gmm_standalone_hexagon

sim:
	hexagon-sim -mv5 --timing gmm_standalone_hexagon

# gmm_test_x86:
# 	gcc -g -pg codegen/lib/gaussmixp/*.c gmm_test_x86.c -o gmm_test_x86 -lm

# gmm_test_matlab:
# 	gcc $(CFLAGS) codegen/lib/gaussmixp_unloop/*.c gmm_standalone_matlab.c -o gmm_matlab -lm
#	gcc -g -pg gmm_standalone.c -o gmm_standalone -lm

# gmm_standalone_hexagon:
# 	hexagon-gcc $(CFLAGS)  gmm_standalone.c -o gmm_standalone_hexagon -lm -lhexagon 
# #	hexagon-gcc -g -O$(OPTIMIZE) -Os codegen/lib/gaussmixp_unloop/*.c gmm_standalone.c -o gmm_standalone_hexagon -lm -lhexago

# gmm_test_x86_opt:
# 	gcc -O$(OPTIMIZE) -g codegen/lib/gaussmixp/*.c gmm_test_x86.c -o gmm_test_x86_opt -lm

# gmm_test_hexagon:
# 	hexagon-gcc -mv$(VERSION) -O$(OPTIMIZE) -I$(INCLUDE) codegen/lib/gaussmixp/*.c gmm_test.c -o gmm_test_hexagon -lhexagon -lm

# gmm_test_hexagon_unloop:
# 	hexagon-gcc -mv5 codegen/lib/gaussmixp_unloop/*.c gmm_test_unloop.c -o gmm_test_hexagon_unloop -lhexagon -lm

# sim_with_profile_hexagon:
# 	hexagon-sim -mv5 --timing --statsfile hstat.txt --profile gmm_test_hexagon

# sim_qprof:
# 	hexagon-sim -mv5 --timing --qprof qprof_description gmm_test_hexagon

# profile_qprof:
# 	hexagon-profiler-gui --qproffile qprof001.out --symfile gmm_test_hexagon

# profile_hexagon:
# 	hexagon-gprof gmm_test_hexagon gmon.t*

# sim_with_profile_hexagon_unloop:
# 	hexagon-sim -mv5 --timing --profile gmm_test_hexagon_unloop

# profile_hexagon_unloop:
# 	hexagon-gprof gmm_test_hexagon_unloop gmon.t*

# clean:
# 	rm -f *.o gmm_standalone gmm_test_x86_opt gmm_matlab gmm_standalone_hexagon gmm_test_hexagon gmm_test_standalone gmm_test_x86 gmm_test_hexagon_unloop gmm_test_x86_unloop stats.txt gmon.*