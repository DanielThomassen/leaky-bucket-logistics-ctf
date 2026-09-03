# Leaky Bucket Logistics CTF

## Start the challenge

```shell
docker compose up -d
```

Then open <http://localhost:8081/> and start with Challenge 1. The public API
is at <http://localhost:8080/>.

The container image is public and is pulled automatically on first start.

## Stop the challenge

```shell
docker compose down
```

## Rules

- Work only through the supplied web applications and APIs.
- Do not inspect Docker images, containers, networks, source files, or the host
  machine.
- Do not brute-force paths, credentials, endpoints, or tokens.
- Work with your team and keep useful findings for the next briefing.
