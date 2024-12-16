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
		if [ $(find resources -name \*.js | wc -l) -gt 0 ]
		then
			npm i
			npm run eslint
			RES=$?
			popd > /dev/null
			[ $RES -ne 0 ] && exit $RES
		else
			echo
			echo "No JS resource"
			popd > /dev/null
		fi
	fi
done
echo
exit 0

