#!/bin/bash

# Making sure the script stops if any of the commands fails
set -eu

# Enable debug mode if RUNNER_DEBUG is 1
[[ "${RUNNER_DEBUG:-0}" -eq 1 ]] && set -x

# The person who we should greet
PERSON_TO_GREET="${INPUT_WHO_TO_GREET:=World}"

# Print out the greeting
echo "Hello, $PERSON_TO_GREET!"

# Record the current UTC time
TIME=$(date -u "+%Y-%m-%dT%H:%M:%SZ")

# Print the time
echo "time=${TIME}" >> "$GITHUB_OUTPUT"
