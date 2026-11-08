# Maintaining the SpaceBar cask

This tap packages the existing public Mac download. It does not rebuild, sign,
notarize or modify the app. It is independent of Homebrew's official catalogue.

## Release updates

1. Finish the ordinary SpaceBar release process first. Use the exact published,
   immutable ZIP and its SHA-256 from the upstream release's `SHA256SUMS.txt`.
2. Update `version` and `sha256` in `Casks/samspring-spacebar.rb`. Keep the app
   name, permanent bundle identifier and platform requirements accurate.
3. Run the checks below in sequence. Homebrew's developer commands share a
   managed Ruby bundle and must not run concurrently.
4. Test affected installation/upgrade behavior on an isolated Mac or VM. The
   first release requires the complete [native checklist](NATIVE_QA.md).
5. Record exact recipe revision, archive checksum and results. Merge only after
   applicable native acceptance, then publish the reviewed website instructions.

```sh
brew style --cask samspring/tap/samspring-spacebar
brew audit --strict --online --cask samspring/tap/samspring-spacebar
brew livecheck --cask samspring/tap/samspring-spacebar
brew fetch --cask samspring/tap/samspring-spacebar
```

These commands inspect or download the package; they do not prove an installed
app works. CI also verifies the downloaded app's signature, stapled notarization
ticket and Gatekeeper assessment without installing or launching it.

Homebrew's `auto_updates true` describes SpaceBar's manual in-app download and
installation feature. It does not enable background update checks in SpaceBar.
To explicitly upgrade using Homebrew, use `brew upgrade --greedy --cask` with the
fully qualified cask name.

## Preservation

The cask installs `SpaceBar.app` and requests a normal quit of only
`local.samuelaviv.MenuBarSpacers` during removal or replacement. It does not
delete preferences, settings, layouts, support receipts or login-item records.
No `zap` cleanup is provided: user-created layout snapshots and persistent
menu-bar placement should remain recoverable after removing the app.

Do not use `--force`, `--adopt`, `--no-quarantine`, `sudo` cleanup, broad process
signals or preference-reset scripts to make acceptance pass. An existing app
that Homebrew does not manage needs a deliberate, recoverable migration; never
silently replace Samuel's working development installation.

The artwork, app implementation and update-signing credentials remain with the
upstream project. Never copy private keys or personal configuration here.
