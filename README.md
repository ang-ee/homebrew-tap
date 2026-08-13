# ang-ee/homebrew-tap

Homebrew tap for [Angee](https://angee.ai) — a self-managed stack manager for
agent-native applications.

## Install

```sh
brew install ang-ee/tap/angee
```

That installs both binaries, `angee` (CLI) and `angee-operator` (control-plane
server), plus `process-compose`, which runs `runtime: local` services.

## Docker is not installed

Angee shells out to Docker only for `runtime: container` services and container
jobs. This tap deliberately leaves that choice to you:

```sh
brew install --cask docker      # Docker Desktop
brew install --cask orbstack    # OrbStack
brew install colima docker      # Colima + docker CLI
```

A stack that uses neither container services nor container jobs needs no
container runtime at all.

## Upgrading

```sh
brew update && brew upgrade angee
```

## What's in here

| Formula | Source |
|---|---|
| `angee` | [ang-ee/angee-operator](https://github.com/ang-ee/angee-operator) |

`Formula/angee.rb` is generated — every release of `angee-operator` overwrites
it via `scripts/update-homebrew-formula.sh` in that repo. Send fixes to the
generator, not to the formula.

## Alternatives to Homebrew

```sh
curl -fsSL https://angee.ai/install.sh | sh
```

Or download a binary from the
[releases page](https://github.com/ang-ee/angee-operator/releases).

## Docs

[docs.angee.ai](https://docs.angee.ai)
