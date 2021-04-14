#!/bin/sh -l
echo "registry=https://registry.npmjs.org/" > "$HOME/.npmrc"
echo "@$INPUT_ORG_NAME:registry = https://npm.pkg.github.com/" >> "$HOME/.npmrc"
if [[ -z "$INPUT_AUTH_TOKEN" ]]; then
    echo "//npm.pkg.github.com/:_authToken=$AUTH_TOKEN" >> "$HOME/.npmrc"
else
    echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> "$HOME/.npmrc"
fi
