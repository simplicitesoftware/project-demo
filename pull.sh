#!/bin/bash
for f in Demo*
do
	pushd $f > /dev/null
	echo
	echo "========================="
	echo $f
	echo "========================="
	git pull
	popd > /dev/null
done
echo
exit 0
