PATH=$PATH:bin/sox

DST_DIR=~/tidigits/
TIDIGITS_DIR=~/Desktop/Tidigits
WAV_DIR=~/tidigits/wav

mkdir -p $DST_DIR/train
mkdir -p $DST_DIR/test

mkdir -p $WAV_DIR/train
mkdir -p $WAV_DIR/test

cd $TIDIGITS_DIR/CD1_3/tidigits
find . -name *.wav | \
while read a; do echo $a ${a#./*/}; done | \
while read a b; do echo $a ${b////_}; done | \
while read a b; do cp $a ~/tidigits/train/$b; done

cd $TIDIGITS_DIR/CD2_3/tidigits
find . -name *.wav | \
while read a; do echo $a ${a#./*/}; done | \
while read a b; do echo $a ${b////_}; done | \
while read a b; do cp $a ~/tidigits/test/$b; done

cd $DST_DIR/train
ls | while read a; do echo $a ${a%%_*}-${a#*_}; done | \
while read src dst; do mv $src $dst; done

cd $DST_DIR/test
ls | while read a; do echo $a ${a%%_*}-${a#*_}; done | \
while read src dst; do mv $src $dst; done

cd $DST_DIR/train
ls |
while read sample; do
    bin/sox/sox -r8000 -s -b16 $sample $WAV_DIR/train/$sample
done;


cd $DST_DIR/test
ls |
while read sample; do
    bin/sox/sox -r8000 -s -b16 $sample $WAV_DIR/test/$sample
done;
