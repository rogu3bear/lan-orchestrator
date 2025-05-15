#!/bin/bash
# Script to reload Zoraxy config via REST API and check health
curl -X POST http://localhost:4000/reload-config  # Assuming Zoraxy REST endpoint for reload; adjust if needed
curl http://localhost:4000/health  # Health check endpoint
