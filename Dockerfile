# ────────────────────────────────────────────────
# IKANN CoreDNS Dockerfile — φ-KAI DNS Authority
# Uses Alpine for minimal image, runs on port 1053
# ────────────────────────────────────────────────

FROM alpine

# Optional: Install bash if your start.sh uses it
RUN apk add --no-cache bash

# Copy compiled CoreDNS binary and config files
COPY coredns /coredns
COPY Corefile /Corefile
COPY zone.kai /zone.kai
COPY start.sh /start.sh

# Set permissions
RUN chmod +x /coredns /start.sh

# Expose DNS port 1053 (TCP/UDP)
EXPOSE 1053/tcp
EXPOSE 1053/udp

# Launch via start script (must run CoreDNS with -dns.port=1053)
CMD ["/start.sh"]
