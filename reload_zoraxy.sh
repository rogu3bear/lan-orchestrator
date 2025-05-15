#!/bin/bash
# Script to reload Zoraxy config via REST API and check health
./zoraxy -reload-config
./zoraxy -health
