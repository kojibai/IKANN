#!/bin/sh
set -e

echo "🚀 Starting Kai-CoreDNS Server..."

# Print Corefile and zone file for debug/logging
echo "🧾 Corefile:"
cat /Corefile
echo "🌐 zone.kai:"
cat /zone.kai

# Run CoreDNS with verbose logging
/coredns -conf /Corefile
