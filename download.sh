#!/usr/bin/env bash

if [ "$CODE_VERSION" == "" ]; then
  CODE_VERSION="2.1692-vsc1.39.2"
fi
if [ "$CODE_ARCH" == "" ]; then
  CODE_ARCH="linux-x86_64"
fi
DIRNAME="code-server${CODE_VERSION}-${CODE_ARCH}"
TARNAME="${DIRNAME}.tar.gz"

wget https://github.com/cdr/code-server/releases/download/${CODE_VERSION}/${TARNAME}
tar fvxz ${TARNAME}
mv ${DIRNAME}/code-server .
rm -rf ${DIRNAME}
rm ${TARNAME}
