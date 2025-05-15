# LAN Orchestrator

This project implements a local DNS and reverse-proxy orchestration system to manage services on a LAN. It follows a 10-phase roadmap for development, starting from a Mac-based prototype and evolving to a Dockerized solution.

## 10-Phase Roadmap

| # | Phase Goal | Core Actions / Factors |
| --- | --- | --- |
| **1. Bootstrap & Environment** | Clean local dev ground | - Create new Git repo `lan-orchestrator`.<br>- `.tool-versions` for `go`, `node`, `python` (LTS).<br>- Install Homebrew deps: `go`, `bun`, `python3`, `mkcert`, `coreutils`, `docker`.<br>- Generate LAN root-CA via mkcert; trust in macOS keychain.<br>- Define `.env.example` (ports, DB path, Zoraxy paths). |
| **2. Stack Skeleton** | Empty but runnable services | - Add `docker-compose.yml` with stub services.<br>- Pin images and expose ports.<br>- `make dev` script.<br>- Commit branch `feat/stack-skeleton`. |
| **3. Zoraxy Reverse-Proxy** | Local HTTP/TCP routing engine | - Vendor Zoraxy binary.<br>- Configure YAML and verify UI.<br>- Add config reload wrapper and health-check. |
| **4. CoreDNS Local Resolver** | .lan / bare-word resolution | - CoreDNS config with zone file.<br>- Expose ports and provide DNS setup script. |
| **5. SQLite Config DB** | Single source of truth | - Define services schema.<br>- Set up migrations and tests.<br>- Commit branch `feat/config-db`. |
| **6. FastAPI Backend** | REST brain between UI ↔ Zoraxy ↔ CoreDNS | - Endpoints for service management.<br>- Handle config updates and tests. |
| **7. React / shadcn UI** | Human-friendly control panel | - Build React app with forms and API integration. |
| **8. Service Discovery Helpers** | Nice-to-have automation | - Add mDNS scanning and port discovery. |
| **9. Full-Stack Tests & Multi-Device Verification** | Guaranteed LAN-wide operation | - Run e2e tests and manual verifications. |
| **10. Dockerization & Release** | Portable, scalable package | - Convert to Docker volumes and set up CI/CD.<br>- Write documentation and tag release. |

## Execution Rules
- One branch per phase, named `feat/<phase-name>`.
- Commit messages follow `<type>: <subject>`.
- Run `make ci` before pushes.
- Sync with remote after each phase.
- After Phase 10, open PR to main for review.
