# Leaky Bucket Logistics CTF

## Start or update the challenge

If you cloned this repository before a workshop update, use the launcher for
your operating system. It obtains the latest launcher configuration and image,
then starts the CTF:

```powershell
.\run.ps1
```

```sh
./run.sh
```

The first run can take a few minutes while Docker downloads the image. The
launcher stays attached to the CTF output; press `Ctrl+C` to stop the stack.

To start without checking for updates:

```shell
docker compose up
```

Then open <http://localhost:8081/> and start with Challenge 1. The public API
is at <http://localhost:8080/>.

The container image is public and is pulled automatically on first start.

## Stop the challenge

When the launcher is open, press `Ctrl+C`. If the stack was started in the
background, run:

```shell
docker compose down
```

## Rules

- Work only through the supplied web applications and APIs.
- Do not inspect Docker images, containers, networks, source files, or the host
  machine.
- Do not brute-force paths, credentials, endpoints, or tokens.
- Work with your team and keep useful findings for the next briefing.

## Requirements

- A running [Docker Engine](https://docs.docker.com/engine/) compatible runtime
  with Docker Compose v2 (for example Docker Desktop or Docker Engine with the
  Compose plugin).

### Windows

Install and start Docker Desktop, configured to use Linux containers. Open
PowerShell and confirm Docker Compose is available:

```powershell
docker compose version
```

### Linux

Install Docker Engine and the Docker Compose plugin using your distribution's
Docker installation guidance. Start the Docker service and ensure your user can
run Docker commands, then confirm Docker Compose is available:

```sh
docker compose version
```
