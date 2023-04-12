#!/bin/bash
for f in Demo*
do
	pushd $f > /dev/null
	echo
	echo "========================="
	echo $f
	echo "========================="
	git push github
	popd > /dev/null
done
echo
exit 0

