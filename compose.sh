#!/bin/bash

# A script to auto add ENV variables prior to docker-compose
source "$(git rev-parse --show-toplevel)/docker.env"
docker-compose "$@"
