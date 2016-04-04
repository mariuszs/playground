#!/usr/bin/env bash
if [ "$TRAVIS_PULL_REQUEST" == "false" -a "$TRAVIS_BRANCH" == "master" ]; then
    git config --global user.email "builds@travis-ci.com"
    git config --global user.name "Travis CI"
    export GIT_TAG=build-$TRAVIS_BUILD_NUMBER
    echo -n $GIT_TAG > public/version
    git commit -m "Set build VERSION number" public/version
    git tag $GIT_TAG -a -m "Generated tag from TravisCI build $TRAVIS_BUILD_NUMBER"
    git push --quiet https://$GITHUBKEY@github.com/mariuszs/playground.git $GIT_TAG > /dev/null 2>&1
fi