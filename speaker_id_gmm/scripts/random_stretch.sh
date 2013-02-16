rm -rf randomtrain randomtest
mkdir randomtrain randomtest

cd train
ls *.wav | while read f; do soundstretch $f ../randomtrain/$f -pitch=$(expr $RANDOM % 7 - 3); done

cd ../test
ls *.wav | while read f; do soundstretch $f ../randomtest/$f -pitch=$(expr $RANDOM % 7 - 3); done
