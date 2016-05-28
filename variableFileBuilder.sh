#!/bin/bash
image=$1
kernel=$2
if [ "$(uname)" == "Linux" ]; then
	string=$(md5sum $image)
	sum=`echo $string | awk '{print $1}'`
else
	string=$(md5 $image)
	sum=`echo $string | awk '{print $4}'`
fi 
if [ $# -eq 3 ] || [ $# -eq 4 ]; then
	initrd=$3
else
	initrd=""
fi
display="none"
if [ $# -eq 4 ]; then
	display=$4
fi
cat << EOF > variables.json
{
	"url_local": "$image",
	"sum_local": "$sum",
	"kernel": "$kernel",
	"display": "$display",
	"initrd": "$initrd"
}
EOF
