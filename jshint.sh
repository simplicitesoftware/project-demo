#!/bin/bash

for f in Demo*
do
	pushd $f > /dev/null
	echo
	echo "========================="
	echo $f
	echo "========================="
	npm i
	npm run jshint
	RES=$?
	popd > /dev/null
	[ $RES -ne 0 ] && exit $RES
done
echo
exit 0
