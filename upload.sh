if [ ! -d finish ]; then
	mkdir finish
fi

for file in `ls split`;do
	echo "uploading $file..."
	./bpcs_uploader/bpcs_uploader.php upload ./split/$file $file
	if [ $? -eq 0 ];then
		echo "upload $file ok"
		mv split/$file finish/$file
	fi
done

