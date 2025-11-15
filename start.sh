#!/bin/bash

# Exit immediately if any command fails
set -e

# Log startup
echo "────────────────────────────────────────────"
echo "🌐 IKANN CoreDNS — Launching on port 53"
echo "────────────────────────────────────────────"
echo ""
echo "📜 Using Corefile:"
cat /Corefile
echo ""
echo "📡 Serving DNS over TCP/UDP on port 53"
echo ""

# Start CoreDNS using custom Corefile
# NOTE: no -dns.port flag here — port is controlled by Corefile (.:53)
exec /coredns -conf /Corefile
