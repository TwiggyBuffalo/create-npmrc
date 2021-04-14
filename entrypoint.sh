#!/bin/sh -l
echo "registry=https://registry.npmjs.org/" > "$INPUT_DIRECTORY/.npmrc"
echo "@$INPUT_ORG_NAME:registry = https://npm.pkg.github.com/" >> "$INPUT_DIRECTORY/.npmrc"
if [[ -z "$INPUT_AUTH_TOKEN" ]]; then
    echo "//npm.pkg.github.com/:_authToken=$AUTH_TOKEN" >> "$INPUT_DIRECTORY/.npmrc"
else
    echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> "$INPUT_DIRECTORY/.npmrc"
fi
