#!/bin/bash

for f in Demo*
do
	if [ -d $f ]
	then
		pushd $f > /dev/null
		echo
		echo "========================="
		echo $f
		echo "========================="
		if [ $(find resources -name \*.css -o -name \*.less | wc -l) -gt 0 ]
		then
			npm i
			npm run stylelint
			RES=$?
			popd > /dev/null
			[ $RES -ne 0 ] && exit $RES
		else
			echo
			echo "No styles resource"
			popd > /dev/null
		fi
	fi
done
echo
exit 0
