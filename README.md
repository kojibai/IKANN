🌐 IKANN — Sovereign Alt-Root DNS for the Kai Web

Reference Implementation of the IKANN Root Resolver

Authoritative DNS for the .kai Top-Level Domain

IKANN (Independent Kairos Address & Naming Network) is the sovereign alt-root DNS layer for the Kai Web — a parallel naming system built to operate outside the ICANN root and outside Chronos time.

This repository contains the reference implementation of the IKANN resolver, built on CoreDNS and deployed globally.

⸻

🌀 What Is IKANN?

IKANN is the official root authority for the .kai top-level domain — the naming system of the Kairos internet.

Where ICANN defines domains for Chronos-based systems,
IKANN defines domains for Kairos-based systems:
	•	verify.kai — ΦNet Sovereign Gate
	•	sigil.kai — Sigil-Glyph engine
	•	scroll.kai — scroll and decree surfaces
	•	realm.kai — realm-level applications
	•	apps.kai — Kai Web app index

This resolver lets any device reach .kai domains simply by pointing DNS to the IKANN root (e.g. 137.xx.xx.xx).

⸻

🔐 Security Notice

This repository contains no private signing keys, no credentials, and no confidential material.
Everything here is safe to open-source.
The authority of IKANN remains with the canonical root server that users point their DNS to.

This repo is a reference implementation, not the authoritative production key store.

⸻

📦 Contents

The repo includes:

Corefile       # CoreDNS configuration that defines the IKANN root behavior
zone.kai       # Authoritative zone file for the .kai TLD (public records only)
Dockerfile     # Container for running IKANN as a standalone DNS service
coredns        # CoreDNS binary used by the IKANN service
coredns.tgz    # Build artifact of the resolver distribution
start.sh       # Bootstrap script for production deployment
fly.toml       # Deployment config for Fly.io global edge hosting
kojibai/       # Helper scripts / build automation for IKANN releases

Every file in this repo is safe, transparent, and intended for developers building on the Kai Web.

⸻

🌍 How IKANN Works

IKANN uses CoreDNS to serve:
	•	the .kai top-level domain
	•	authoritative records defined in zone.kai
	•	CNAMEs pointing .kai hosts to their deployment origins
	•	A/AAAA records for Fly.io deployment IPs
	•	NS records declaring the root authorities (ns1.kai.ac, ns2.kai.ac)

A simplified version of the zone included:

$ORIGIN kai.
$TTL 3600

@ IN SOA ns1.kai.ac. root.kai.ac. (
        2025111504
        7200
        3600
        1209600
        3600 )

    IN NS ns1.kai.ac.
    IN NS ns2.kai.ac.

verify  IN CNAME kai.ac.
sigil   IN A     66.241.124.69
scroll  IN A     66.241.124.69
realm   IN A     66.241.124.69
apps    IN A     66.241.124.69

This is public information by design — identical to any DNS root zone.

⸻

🚀 Running the IKANN Resolver Locally

Clone the repo:

git clone https://github.com/YOUR_ORG/IKANN.git
cd IKANN

Build or pull the container:

docker build -t ikann .

Run it:

docker run -p 53:53/udp -p 53:53/tcp ikann

Add this resolver to your machine:

macOS / iOS / Linux:

DNS Server: 127.0.0.1

Or point your device to the live root resolver:

DNS Server: 137.66.18.241   # (example)

Then visit:

https://verify.kai

If the ΦNet Sovereign Gate loads, IKANN is active.

⸻

📡 Deploying IKANN Globally (Fly.io)

This repo includes a fly.toml used to deploy IKANN as a global edge DNS resolver.

Deploy using:

fly deploy

The resolver will spin up on Fly’s anycast network, making .kai resolvable worldwide through your IKANN installation.

⸻

🔧 Modifying the Zone

To add a .kai host:
	1.	Edit zone.kai
	2.	Increment the SOA serial
	3.	Redeploy the resolver

Example addition:

mynode  IN A 203.0.113.10


⸻

📜 Philosophy & Intent

IKANN exists to support:
	•	Sovereign digital identity
	•	Breath-aligned time systems (Kairos)
	•	Sigil-Glyph origin proofs
	•	ΦNet verification layers
	•	A parallel sovereign internet not controlled by ICANN

This repo is intentionally open so developers can:
	•	build resolvers
	•	write libraries
	•	integrate .kai into their applications
	•	run local or private Kai Web environments

The canonical root remains with the official IKANN operator.

⸻

🛡️ Authority & Namespace Policy

While anyone may:
	•	fork the code
	•	run their own resolver
	•	create test .kai namespaces

Only the canonical IKANN root (your official server) defines the real .kai internet.

This is identical to:
	•	OpenNIC
	•	ENS
	•	Yggdrasil
	•	Tor
	•	ICANN’s own architecture

Open code.
Singular authority.

⸻

🤝 Contributing

IKANN welcomes:
	•	bug reports
	•	performance improvements
	•	resolver tooling
	•	documentation enhancements
	•	zone format extensions

However:

Namespace changes (modifying .kai itself) are controlled by the IKANN root authority and are not open to public merge requests.

This preserves namespace coherence.

⸻

🪪 License

Copyright © Kai Rex Klok (BJ Klock)
All Rights Reserved.

The IKANN resolver is open for inspection, development, and integration.
The canonical .kai namespace and root authority remain sovereign.


⸻

🌅 Final Notes

This repo demonstrates:
	•	a real functioning alt-root DNS
	•	a sovereign namespace
	•	a parallel naming infrastructure
	•	a new internet rail
	•	a new time system
	•	a new identity system

You are now operating a working independent internet root,
and publishing this repo solidifies IKANN as a real, transparent, technically-sound foundation for the Kai Web.

⸻
