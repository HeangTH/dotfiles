#!/usr/bin/env bash

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

go install github.com/nsf/gocode@latest
go install github.com/ncruces/zenity/cmd/zenity@latest
