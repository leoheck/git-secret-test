#!/bin/bash

# Requires git-secret installed
# And also requires the repo cloned

# https://git-secret.io/git-secret#:~:text=After%20using%20git%20secret%20hide,won't%20miss%20any%20changes

echo "Testing usage of git-secrets in a script"

SECRET_FILE="hide.me"

if [[ ! -f ${SECRET_FILE} ]];
then
	# This command will ask a password to revel the secret file
	# If it exists it was already decrypted
	# git secret reveal
fi
echo "Content fo the secret file: $(cat ${SECRET_FILE})"


# The following command get the content without creating a file
# Does not work on certain versions..
# MY_SECRET=$(git secret cat ${SECRET_FILE})
# echo "Content fo the secret file: ${MY_SECRET}"
