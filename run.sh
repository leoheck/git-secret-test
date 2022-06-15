#!/bin/bash

REPO_NAME="git-secret-test"
REPO_PATH="/tmp/${REPO_NAME}"

if [ ! -d "${REPO_PATH}" ]; then
	echo "Cloning ${REPO_PATH} repo ..."
	git clone -q https://github.com/leoheck/${REPO_NAME}.git "${REPO_PATH}"
	cd "${repo_paqth}"
else
	echo "Updating existing ${REPO_PATH} repo ..."
	cd "${REPO_PATH}"
	git stash -q
	git pull -q
fi

sleep 1

# Run the test..
./test.sh
rm -rf ${REPO_PATH}

# Remove secret
SECRET_FILE="hide.me"
rm -rf ${REPO_PATH}/${SECRET_FILE}
