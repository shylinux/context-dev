#!/bin/bash
if [ `uname` = 'Linux' ] && ! [ -e /usr/local/go ]
then
	sudo tar xvf go1.6.2.linux-386 -C /usr/local
fi

tar xvf vim.tar.gz -C ~ &> /dev/null
tar xvf golang.tar.gz -C ~ &> /dev/null

export GOPATH=~/context:~/go
export GOBIN=~/go/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/go/bin

cat >> ~/.bashrc <<EOF
export GOPATH=~/context:~/go:$GOPATH
export GOBIN=~/go/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/go/bin
EOF

cd ~/go/src/github.com/
go install ./nsf/gocode/
go install ./jstemmer/gotags/
go install ./skip2/go-qrcode/
go install ./go-sql-driver/mysql/

