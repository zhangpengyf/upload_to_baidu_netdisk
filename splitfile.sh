if [ $# -lt 2 ];then
echo "usage: ./splitfile.sh filename prefix"
echo "such as:./splitfile.sh file.tar.gz splitfile.tar.gz."
exit 1
fi
rm -rf split
mkdir split
split -b 490m -d $1 split/$2
