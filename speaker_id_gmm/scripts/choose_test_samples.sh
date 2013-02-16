mv staging/test/* staging/train/

for i in `ls staging/train/*.wav`; do
  echo "$RANDOM $i";
done |\
sort |\
sed -E 's#.+/(.+)#\1#' |\
head -n 200 |
while read i; do
  mv staging/train/$i staging/test/$i
done

echo "Train: " `ls staging/train/*.wav | wc -l`
echo "Test:  " `ls staging/test/*.wav | wc -l`
