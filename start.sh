#!/bin/sh

# Render uses Linux container paths; set working dir
cd "$(dirname "$0")"

# Optional: Handle GOMAXPROCS warning
export GOMAXPROCS=1

# Run CoreDNS using relative paths
exec ./coredns -conf Corefile
