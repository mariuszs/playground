#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    openssl aes-256-cbc -K $encrypted_89c06a3c5c8d_key -iv $encrypted_89c06a3c5c8d_iv -in .travis/signingkey.asc.enc -out .travis/signingkey.asc -d
    gpg --fast-import .travis/signingkey.asc
fi