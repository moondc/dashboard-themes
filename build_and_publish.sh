#!/bin/bash
#Exit immediately on error
set -e

ng build

echo "Setting builder to default"
npm version patch