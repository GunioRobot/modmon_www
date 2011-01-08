
sleep 59

filename=`date +"%Y-%m-%d-%H"`.txt


grep `date +"%d/%h/%Y:%H"` /var/log/nginx-update.log \
	| awk '{print "==============="$1"=="$3}' \
	| sed 's/\/update\///g' \
	| sed 's/\// /g' \
	| tr "?" "\n" \
	| tr "&" "\n" \
	| tr " " "\n" \
	| tr "\n\n" "\n" \
	> `pwd`/../www/data/$filename

grep '===============' `pwd`/../www/data/$filename | sed 's/===============//g' | sed 's/==/ /g' | awk '{print $2}' | sort -u > `pwd`/../www/data/hosts.txt
