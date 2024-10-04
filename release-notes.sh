#!/bin/bash

set -x

# Define the output directory name
releaseDir="releases"

# Create the releases directory if it doesn't exist
if [ ! -d "$releaseDir" ]; then
  mkdir -p "$releaseDir"
fi

# Set the version to the provided version or the current date if not provided
version=${version:-$(date +"%y-%m-%d")}

# Get the last release tag
lastRelease=$(git tag -l | sort | tail -n 1)

# Output the last release tag
echo "$lastRelease"

# Define the release file path
relfile="./releases/release-$version.md"

# Remove the release file if it exists
rm -f "$relfile"

# Create the release notes file
echo -e "## Release Notes\n\n" >> "$relfile"
echo "``````" >> "$relfile"

# Append the git log to the release notes file
gitLog=$(git log --pretty=format:"%ad: %s" --date=short --submodule=short "$lastRelease..HEAD")
echo "$gitLog" >> "$relfile"
