#!/bin/bash

INSTALL_PATH="${INSTALL_PATH:-$PWD}"

cd "$INSTALL_PATH"

if test ! -e offline
then
	echo "Downloading freenet-ext.jar"
	java -jar bin/sha1test.jar freenet-ext.jar "$INSTALL_PATH" 2>&1/dev/null || exit 1
fi
