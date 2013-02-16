VERSION=5
INCLUDE=/home/k/Qualcomm/HEXAGON_Tools/5.0.07/gnu/hexagon/include/

gmm_test_x86:
	gcc -g -pg codegen/lib/gaussmixp/*.c gmm_test_x86.c -o gmm_test_x86 -lm

gmm_test_x86_opt:
	gcc -O3 codegen/lib/gaussmixp/*.c gmm_test_x86.c -o gmm_test_x86_opt -lm

gmm_test_hexagon:
	hexagon-gcc -mv$(VERSION) -O3 -I$(INCLUDE) codegen/lib/gaussmixp/*.c gmm_test.c -o gmm_test_hexagon -lhexagon -lm

gmm_test_hexagon_opt:
	hexagon-gcc -mv$(VERSION) -O3 -I$(INCLUDE) codegen/lib/gaussmixp/*.c gmm_test.c -o gmm_test_hexagon_opt -lhexagon -lm

gmm_test_hexagon_unloop:
	hexagon-gcc -mv5 codegen/lib/gaussmixp_unloop/*.c gmm_test_unloop.c -o gmm_test_hexagon_unloop -lhexagon -lm

sim_with_profile_hexagon:
	hexagon-sim -mv5 --timing --profile gmm_test_hexagon

sim_with_profile_hexagon_opt:
	hexagon-sim -mv5 gmm_test_hexagon_opt

profile_hexagon:
	hexagon-gprof gmm_test_hexagon gmon.t*

profile_hexagon_opt:
	hexagon-gprof gmm_test_hexagon_opt gmon.t*

sim_with_profile_hexagon_unloop:
	hexagon-sim -mv5 --timing --profile gmm_test_hexagon_unloop

profile_hexagon_unloop:
	hexagon-gprof gmm_test_hexagon_unloop gmon.t*

clean:
	rm -f *.o gmm_test_hexagon gmm_test_x86 gmm_test_hexagon_unloop gmm_test_x86_unloop stats.txt gmon.*
