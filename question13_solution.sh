# #! /usr/bin/env bash
CHECK="d3d9d7416672c7033055e3df64ff1f047bc2e170db7ecbeb0e8bb1b9cfd8c338 Archive.zip"
if test -f "Archive.zip"; then
    echo "It EXISTS"
    echo $CHECK
    NEWCHECK=$(shasum -a 256 Archive.zip)
    echo -e
    echo $NEWCHECK
    if [[ $CHECK==$NEWCHECK ]]; then
        echo "FILES VERIFIED"
    else
        echo "FILES CHECKSUM DON'T MATCH"
    fi
fi