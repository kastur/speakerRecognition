echo "Staging wav files"
echo "Source: " $1
echo "Destination: staging/$2"
rm -rf staging/$2;
mkdir staging/$2;
find $1 -name *.raw | \
while read sample; do cp $sample staging/$2; done

find staging/$2 -name *.raw | \
while read sample; do
    bin/sox/sox -r8000 -s -b16 $sample $sample.wav
done;
