#!/usr/bin/env bash
if [ "$TRAVIS_PULL_REQUEST" == "false" -a "$TRAVIS_BRANCH" == "master" ]; then
    ./mvnw deploy --settings .mvn/settings.xml -Prelease
fi