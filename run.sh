#!/usr/bin/env sh
set -eu

script_directory=$(CDPATH= cd "$(dirname "$0")" && pwd)
cd "$script_directory"

git pull --ff-only
docker compose pull

printf '\nStarting Leaky Bucket Logistics CTF...\n'
printf 'Briefings:  http://localhost:8081/\n'
printf 'Public API: http://localhost:8080/\n'
printf 'Press Ctrl+C to stop the CTF when you are done.\n\n'

docker compose up
