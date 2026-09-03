#!/usr/bin/env sh
set -eu

script_directory=$(CDPATH= cd "$(dirname "$0")" && pwd)
cd "$script_directory"

git pull --ff-only
docker compose pull
docker compose up --detach

printf '\nLeaky Bucket Logistics CTF is ready.\n'
printf 'Briefings:  http://localhost:8081/\n'
printf 'Public API: http://localhost:8080/\n'
