VERSION=5
OPTIMIZE=2
INCLUDE=/home/k/Qualcomm/HEXAGON_Tools/5.0.07/gnu/hexagon/include/

all:
	gcc -lm lib_mfcc/*.c SpeakerRecognizer.c -o SpeakerRecognizer

hexagon:
	hexagon-gcc -mv$(VERSION) -O$(OPTIMIZE) -I$(INCLUDE) lib_mfcc/*.c SpeakerRecognizer.c -o Speaker_Hexagon -lhexagon -lm
	hexagon-sim -mv$(VERSION) --timing --profile Speaker_Hexagon

clean:
	rm -f Speaker_Hexagon SpeakerRecognizer *.o
