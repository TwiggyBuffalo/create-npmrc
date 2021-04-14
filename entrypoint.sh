#!/bin/sh -l
echo "registry=https://registry.npmjs.org/" > "/github/workspace/.npmrc"
echo "@$INPUT_ORG_NAME:registry = https://npm.pkg.github.com/" >> "/github/workspace/.npmrc"
if [[ -z "$INPUT_AUTH_TOKEN" ]]; then
    echo "//npm.pkg.github.com/:_authToken=$AUTH_TOKEN" >> "/github/workspace/.npmrc"
else
    echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> "/github/workspace/.npmrc"
fi
