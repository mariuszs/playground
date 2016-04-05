[![Build Status](https://travis-ci.org/mariuszs/playground.svg?branch=master)](https://travis-ci.org/mariuszs/playground)

Continuous Release With Maven from Travis CI
=================

Docs:
--------

 * http://www.debonair.io/post/maven-cd/
 * https://www.theguardian.com/info/developer-blog/2014/sep/16/shipping-from-github-to-maven-central-and-s3-using-travis-ci

Test

http://stackoverflow.com/questions/14483118/maven-change-version-properties-in-pom-xml


Increment:

mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion} versions:commit


