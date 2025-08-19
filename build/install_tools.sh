#!/bin/bash

set -euxo pipefail

# 예: Go 1.20 설치 (Debian/Ubuntu 기준)
wget https://golang.org/dl/go1.20.12.linux-amd64.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz

# PATH 설정
export PATH=/usr/local/go/bin:$PATH

# 확인
go version

#wllvm and gllvm
pip install --upgrade pip==9.0.3
pip install wllvm
mkdir ${HOME}/go
# go get github.com/SRI-CSL/gllvm/cmd/...

# 이후 gllvm 설치
go install github.com/SRI-CSL/gllvm/cmd/...
