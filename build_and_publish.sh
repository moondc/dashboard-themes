#!/bin/bash
#Exit immediately on error
set -e

echo "Ensuring publish directory exists"
mkdir -p artifacts

echo "Creating build artifacts"
ng build

echo "Copying css to styles.css"
cp dist/dashboard/browser/styles* artifacts/styles.css

echo "Bumping patch version"
npm version patch --git-tag-version true

echo "Cleaning some files"
rm -rf dist/

echo "Publishing"
npm publish