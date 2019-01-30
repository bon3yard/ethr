#!/bin/bash
echo $TRAVIS_OS_NAME
echo "${TRAVIS_OS_NAME}"
echo "${TRAVIS_GO_VERSION}"
if [ "${TRAVIS_OS_NAME}" = "linux" ] && [[ ${TRAVIS_GO_VERSION} == 1.11* ]]; then
    GOOS=windows
    GOARCH=amd64
    go build -o windows/ethr.exe
    GOOS=linux
    go build -o linux/ethr
    GOOS=darwin
    go build -o osx/ethr
    zip ethr_windows.zip windows/ethr.exe
    zip ethr_linux.zip linux/ethr
    zip ethr_osx.zip osx/ethr
fi

