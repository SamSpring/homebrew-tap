# SamSpring Homebrew tap

Homebrew packaging for [SpaceBar](https://samspring.github.io/SpaceBar-Public/),
a native Mac app for menu-bar spacers, dividers and a flexible gap.

**Candidate status — native Homebrew testing is pending.** Do not merge or
advertise the installation command until the [native checklist](docs/NATIVE_QA.md)
is complete. CI checks metadata, downloads, checksums and signing; it does not
install or launch the app.

This is SamSpring's own tap, not Homebrew's official catalogue. The prefix in
`samspring-spacebar` distinguishes this app from unrelated software.

## Installation after acceptance

The proposed command, once this recipe is accepted on `main`, is:

```sh
brew install --cask samspring/tap/samspring-spacebar
```

Requirements: Apple silicon and macOS 27 or later. The cask uses the same
immutable Developer ID signed and Apple notarized ZIP as the public website.
For now, use the [direct Mac download](https://samspring.github.io/SpaceBar-Public/).

## Updates and removal

SpaceBar's manual **Check for Updates** remains available. To explicitly update
through Homebrew instead:

```sh
brew update
brew upgrade --greedy --cask samspring/tap/samspring-spacebar
```

Normal removal keeps your spacers, saved layouts, preferences and support choice:

```sh
brew uninstall --cask samspring/tap/samspring-spacebar
```

This tap provides no destructive settings cleanup. If an existing SpaceBar app
was installed outside Homebrew, do not force adoption or replacement; keep its
settings and a recovery copy before changing how it is managed.

See [maintenance](docs/MAINTAINING.md) for release updates and preservation rules.
App bugs belong in [SpaceBar-Public](https://github.com/SamSpring/SpaceBar-Public/issues);
packaging problems belong in this tap's issue tracker.

Copyright © 2026 Samuel Aviv / SamSpring. MIT license.
