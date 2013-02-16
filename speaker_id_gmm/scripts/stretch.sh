mkdir off$1
cd test
ls *.wav | while read f; do soundstretch $f ../off$1/$f -pitch=$1; done
