# Setup

Setup for reproducing Freenet's 1481 OOM error.

## Intructions

### Setup a node

- Install freenet somewhere, ex: `/opt/freenet`
- Setup the environment variable `FREENET_ROOT` pointing to this directory, ex: `export FREENET_ROOT=/opt/freenet`
- Configure the node
- Shutdown the node and make a copy (in order to try out clean each time)
  - `cp -r /opt/freenet /opt/freenet-clean`

### Build from source

- Clone from `https://github.com/freenet/fred`
- Copy Makefile-fred to it: `cp Makefile-fred /path/to/fred/Make`
- Build from source and link: `make build` / `make reset` / `make link`

## Workflow

- Stop the node
- Build from source and link
- Probe and run reproduction code

ex:
- `make stop` # stop the node
- `make build; make reset; make link` # Build from source and link (this is done in the fred src)
- `make start` # start the node
- `make repro` # run the repro code
- `make probe` # probe node liveness

## Commands

 - `make help`
 - `make start / make stop / make status ; make probe / make repro ; make clean`
