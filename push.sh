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
		git tag -f 7 -m "Version 7" && git push ${1:-github} 7
		git push ${1:-github}
		popd > /dev/null
	fi
done
echo
exit 0

