# devosurf/homebrew-tap

Homebrew casks for devosurf's Mac apps.

```sh
brew install --cask devosurf/tap/securesend
```

That is the same notarized dmg the
[release page](https://github.com/devosurf/securesend-macos/releases/latest)
serves, taken through Homebrew so that `brew upgrade` keeps it current.

| Cask         | What it is                                                            |
| ------------ | --------------------------------------------------------------------- |
| `securesend` | [SecureSend for macOS](https://github.com/devosurf/securesend-macos), one-time secret links from the menu bar |

Nothing here is edited by hand. Each app's release workflow writes the version
and the sha256 of the file it just notarized, so a cask can only be as new as a
release that actually shipped.
