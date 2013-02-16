echo "Change pitch of wave files to " $2
for i in $(ls $1/*raw.wav | sed -e 's/.*\/\(.*\).wav/\1/');
do
	#echo "soundstrech $i"

	src_file="$1/$i.wav"
	dst_file="$1/${i}_$2.wav"

	#echo $src_file $dst_file $2
	echo $2

	bin/soundstretch/soundstretch \
	$src_file $dst_file \
	-pitch=$2 2> /dev/null
done
