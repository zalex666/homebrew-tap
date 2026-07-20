# Nextline Homebrew Tap

[Nextline](https://www.thenextline.app/) is a Mac autocomplete app that helps
you write up to 2x faster across your everyday apps. Suggestions are generated
by a local LLM that runs entirely on your Mac — private by design.

## Install

```sh
brew install --cask zalex666/tap/nextline
```

Nextline keeps itself up to date automatically (Sparkle), and `brew upgrade`
works too — this tap tracks the official
[release feed](https://zalex666.github.io/inline-autocomplete/appcast.xml), so
new versions land here within a few hours of release.

## Uninstall

```sh
brew uninstall --cask nextline        # remove the app
brew uninstall --zap --cask nextline  # also remove settings and caches
```
