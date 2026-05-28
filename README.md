# Workshop Codespace

A GitHub Codespace configuration for MAgPIE/madrat workshops.

## What it sets up

- **Container image**: [`magpie-image`](https://github.com/magpiemodel/magpie) — a pre-built environment with R, GAMS, and MAgPIE dependencies
- **mrtutorial**: cloned to `/workspaces/mrtutorial` and installed via `pak`
- **madrat main folder**: `/workspaces/madrat-main-folder`, exported as `MADRAT_MAINFOLDER`
- **VS Code extension**: R language support (`reditorsupport.r`)
- **GitHub CLI** available in the container

## Requirements

- 2 CPUs, 8 GB RAM, 32 GB storage (enforced as Codespace host requirements)

## Optional: GAMS license

Set the `GAMS_LICENSE` Codespace secret to a valid license string — the setup script will write it to `/opt/var/gams/gamslice.txt` automatically.

## Usage

Open this repository in a GitHub Codespace. The `postCreateCommand` runs `setup.sh` automatically after the container is created.
