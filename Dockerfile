FROM coredns/coredns:latest

COPY Corefile /Corefile
COPY zone.kai /app/zone.kai

CMD ["-conf", "/Corefile"]
