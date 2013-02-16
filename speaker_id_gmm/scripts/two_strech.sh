rm -rf twoff$1$2 temp
mkdir twoff$1$2 temp

cd test
ls *.wav | while read f; do soundstretch $f ../temp/$f -pitch=$1; done

cd ../temp
ls *.wav | while read f; do soundstretch $f ../twoff$1$2/$f -pitch=$2; done
