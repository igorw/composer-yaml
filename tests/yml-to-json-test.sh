#!/bin/bash

function startTests {
    echo "PlaygroundUnit 0.0.1 by Igor Wiedler."
    echo
}

function endTests {
    echo
    echo
}

function assertEquals {
    if [ "$1" = "$2" ]; then
        echo -n .
    else
        echo "Assertion failed:"
        echo "--- Expected"
        echo "+++ Actual"
        echo "- $1"
        echo "+ $2"

        endTests
        exit 1
    fi
}

function assertContentsEquals {
    diff="$(diff -u $1 $2)"

    if [ "$diff" = "" ]; then
        echo -n .
    else
        echo "Assertion failed:"
        echo "$diff"

        endTests
        exit 1
    fi
}

startTests

touch tests/composer-actual.json
bin/composer-yaml convert tests/composer.yml tests/composer-actual.json
assertContentsEquals tests/composer-expected.json tests/composer-actual.json
rm tests/composer-actual.json

endTests
