#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# The person who we should greet
PERSON_TO_GREET="${INPUT_WHO_TO_GREET:=World}"

# Print out the greeting
echo "Hello, $PERSON_TO_GREET!"

# Record the current UTC time
TIME=$(date -u "+%Y-%m-%dT%H:%M:%SZ")

# Print the time
echo "{time}={$TIME}" >> "$GITHUB_ENV"
