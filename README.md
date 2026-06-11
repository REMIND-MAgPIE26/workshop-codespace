# Workshop Codespace

A GitHub Codespace configuration for MAgPIE/madrat workshops.

## What it sets up

- **Container image**: [`magpie-image`](https://github.com/magpiemodel/magpie) — a pre-built environment with R, GAMS, and MAgPIE dependencies
- **mrtutorial**: find it in `/workspaces/mrtutorial`
- **madrat main folder**: find it in `/workspaces/madrat-main-folder`
- **VS Code extension**: R language support (`reditorsupport.r`), 

## Recommended Codespace Host Specs

- 2 CPUs, 8 GB RAM, 32 GB storage (enforced as Codespace host requirements)

## Optional: GAMS license

Set the `GAMS_LICENSE` [Codespace secret](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-your-account-specific-secrets-for-github-codespaces#adding-a-secret) to a valid license string.

<img width="463" alt="image" src="https://github.com/user-attachments/assets/e5c80c42-e93f-4125-843d-9c860c0d99cb" />

## Usage

Open this repository in a GitHub Codespace. The `postCreateCommand` runs `setup.sh` automatically after the container is created.
