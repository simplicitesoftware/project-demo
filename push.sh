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
		git tag -f 6 -m "Version 6" && git push ${1:-github} 6
		git push ${1:-github}
		popd > /dev/null
	fi
done
echo
exit 0

