#!/bin/bash

repo_name="git-secret-test"
repo_path="/tmp/${repo}"

if [[ ! -d "${repo_path}" ]]; then
	git clone https://github.com/leoheck/${repo_name}.git "${repo_path}"
	cd "${repo_path}"
else
	cd "${repo_path}"
	git stash
	git pull
fi

# Run the test..
./test.sh
