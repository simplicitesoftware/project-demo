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
		git tag -f 5 -m "Version 5" && git push -f ${1:-github} 5
		git push ${1:-github}
		popd > /dev/null
	fi
done
echo
exit 0

