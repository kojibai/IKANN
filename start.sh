#!/bin/sh
cd "$(dirname "$0")"
export GOMAXPROCS=1
exec ./coredns -conf Corefile
