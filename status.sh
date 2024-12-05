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
		git status
		popd > /dev/null
	fi
done
echo
exit 0

