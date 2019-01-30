#!/bin/bash
if [[ "${ETH_LATEST}" = "true" ]] && [[ "${ETH_LINUX}" = "true" ]]; then
    local GOOS=windows
    local GOARCH=amd64
    go build -o windows/ethr.exe
    GOOS=linux
    go build -o linux/ethr
    GOOS=darwin
    go build -o darwin/ethr
fi
