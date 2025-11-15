FROM alpine

# Optional: Install bash if needed
RUN apk add --no-cache bash

# Copy binaries and configs
COPY coredns /coredns
COPY Corefile /Corefile
COPY zone.kai /zone.kai
COPY start.sh /start.sh

# Make sure it's executable
RUN chmod +x /coredns /start.sh

EXPOSE 1053

CMD ["/start.sh"]
