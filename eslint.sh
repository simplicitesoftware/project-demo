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
		npm i
		npm run eslint
		RES=$?
		popd > /dev/null
		[ $RES -ne 0 ] && exit $RES
	fi
done
echo
exit 0

