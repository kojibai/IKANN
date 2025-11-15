#!/bin/bash

# Exit immediately if any command fails
set -e

# Log startup
echo "────────────────────────────────────────────"
echo "🌐 IKANN CoreDNS — Launching on port 1053"
echo "────────────────────────────────────────────"
echo ""
echo "📜 Using Corefile:"
cat /Corefile
echo ""
echo "📡 Serving DNS over TCP/UDP on port 1053"
echo ""

# Start CoreDNS using custom Corefile
exec /coredns -dns.port=1053 -conf /Corefile
