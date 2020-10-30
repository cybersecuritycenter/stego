#!/bin/bash

find *.jpg > pics.txt
python3 createflags.py > flags.txt

echo "file name, flag value, encoding method, password (n/a for none), wordlist/hint" > stegoOutput.csv

while true
do
	read -r f1 <&3 || break
	read -r f2 <&4 || break
	
	echo $f2 > emb.txt
	steghide embed -cf $f1 -ef emb.txt
	echo "$f1,$f2,steghide,n/a,n/a" >> stegoOutput.csv
done 3<pics.txt 4<flags.txt
