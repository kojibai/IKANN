#!/bin/bash

set -e
echo "Starting CoreDNS with config:"
cat /Corefile
echo "Serving on port 1053 (DNS over UDP/TCP)"

# Start CoreDNS directly
exec /coredns -conf /Corefile
