echo "Change pitch of wave files to random pitch between -5 and 5]"
for i in $(ls $1/*raw.wav | sed -e 's/.*\/\(.*\).wav/\1/');
do
	#echo "soundstrech $i"

	src_file="$1/$i.wav"
	dst_file="$1/${i}_rand.wav"
	rand_pitch=$(expr $RANDOM % 11 - 5)

	#echo $src_file $dst_file $rand_pitch
	echo $rand_pitch

	bin/soundstretch/soundstretch \
	$src_file $dst_file \
	-pitch=$rand_pitch 2> /dev/null
done
