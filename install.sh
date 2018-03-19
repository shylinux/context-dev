#!/bin/bash
sudo tar xvf go1.6.2.linux-386 -C /usr/local
tar xvf golang.tar.gz -C ~
tar xvf vim.tar.gz -C ~

export GOPATH=~/go
export GOBIN=~/go/bin
export PATH=$PATH:~/go/bin

go install ~/go/src/github.com/nsf/gocode/
go install ~/go/src/github.com/jstemmer/gotags/
go install ~/go/src/github.com/skip2/go-qrcode/
go install ~/go/src/github.com/go-sql-driver/mysql/

