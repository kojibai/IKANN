# IKANN CoreDNS Dockerfile — φ-KAI DNS Authority
# Alpine + prebuilt coredns binary, runs on port 53 inside the container.

FROM alpine:3.20

# Optional: bash for start.sh, plus ca-certificates for TLS to upstreams
RUN apk add --no-cache bash ca-certificates

# Copy compiled CoreDNS binary and config files
COPY coredns /coredns
COPY Corefile /Corefile
COPY zone.kai /etc/coredns/zone.kai
COPY start.sh /start.sh

# Set permissions
RUN chmod +x /coredns /start.sh

# Expose DNS port 53 (TCP/UDP)
EXPOSE 53/tcp
EXPOSE 53/udp

# Launch via start script
CMD ["/start.sh"]
