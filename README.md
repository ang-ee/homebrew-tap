# ang-ee/homebrew-tap

Homebrew tap for [Angee](https://angee.ai) — a self-managed stack manager for
agent-native applications.

## Install

```sh
brew tap ang-ee/tap
brew trust ang-ee/tap
brew install angee
```

That installs both binaries, `angee` (CLI) and `angee-operator` (control-plane
server), plus `process-compose`, which runs `runtime: local` services.

### Why `brew trust`

Homebrew 6 auto-trusts only the formula you name on the command line, and
refuses to load its dependencies from an untrusted tap. Since `angee` depends
on `process-compose`, `brew install ang-ee/tap/angee` on its own stops with a
trust error. Trusting the tap once fixes it for every future install and
upgrade. See [Tap Trust](https://docs.brew.sh/Tap-Trust).

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

| Formula | Source | Refreshed by |
|---|---|---|
| `angee` | [ang-ee/angee-operator](https://github.com/ang-ee/angee-operator) | every release, automatically |
| `process-compose` | vendored from [F1bonacc1/homebrew-tap](https://github.com/F1bonacc1/homebrew-tap) (Apache-2.0) | by hand, on demand |

Both formulae are generated — do not edit them here. They come from
`scripts/update-homebrew-formula.sh` and
`scripts/update-process-compose-formula.sh` in `angee-operator`; send fixes to
those generators.

`process-compose` is vendored rather than depended on across taps because a
cross-tap dependency would make every install stop for a trust prompt on a
third-party tap the user never named.

## Alternatives to Homebrew

```sh
curl -fsSL https://angee.ai/install.sh | sh
```

Or download a binary from the
[releases page](https://github.com/ang-ee/angee-operator/releases).

## Docs

[docs.angee.ai](https://docs.angee.ai)
