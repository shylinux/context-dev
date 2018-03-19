#!/bin/bash
[ -e /usr/local/go ] || sudo tar xvf go1.6.2.linux-386 -C /usr/local
tar xvf golang.tar.gz -C ~
tar xvf vim.tar.gz -C ~

export GOPATH=~/context:~/go
export GOBIN=~/go/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/go/bin

cd ~/go/src/github.com/
go install ./nsf/gocode/
go install ./jstemmer/gotags/
go install ./skip2/go-qrcode/
go install ./go-sql-driver/mysql/

