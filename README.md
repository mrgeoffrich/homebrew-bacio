# homebrew-bacio

Homebrew tap for [bacio](https://github.com/mrgeoffrich/bacio) — a local-first issue tracker with a CLI and TUI, designed for AI agents.

## Install

```sh
brew tap mrgeoffrich/bacio
brew install bacio
```

Then:

```sh
bacio --help
bacio tui
```

## Upgrade

```sh
brew update
brew upgrade bacio
```

## Uninstall

```sh
brew uninstall bacio
brew untap mrgeoffrich/bacio
```

## How this tap is maintained

The `Formula/bacio.rb` file is regenerated automatically by bacio's release workflow on every new tagged release. Manual edits to the formula will be overwritten — change the [render script](https://github.com/mrgeoffrich/bacio/blob/main/scripts/render-tap-formula.sh) in the main repo instead.
