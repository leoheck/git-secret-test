#!/bin/bash

repo_name="git-secret-test"
repo_path="/tmp/${repo_name}"

if [ ! -d "${repo_path}" ]; then
	echo "Cloning ${repo_path} repo ..."
	git clone -q https://github.com/leoheck/${repo_name}.git "${repo_path}"
	cd "${repo_paqth}"
else
	echo "Updating existing ${repo_path} repo ..."
	cd "${repo_path}"
	git stash -q
	git pull -q
fi

# Run the test..
./test.sh
