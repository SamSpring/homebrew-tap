# Native Homebrew acceptance — pending

The recipe has not yet completed native Homebrew installation, upgrade and
removal acceptance. Keep this change in draft until that result is recorded.

Use the existing authorized SpaceBar macOS 27 test VM or another explicitly
approved isolated Mac. Never perform these steps on Samuel's working Mac.
If VM login, Homebrew setup or an administrator prompt needs a password, Samuel
must enter it locally. Stop there while he is away; do not bypass the prompt or
make a new account, VM, disk, password or permission grant.

1. Verify the guest identity, macOS version and test account. Preserve its
   current SpaceBar app, user configuration, saved layouts, preferences,
   support receipt and login registration. Use a new recovery directory.
2. Use ordinary Homebrew installed from its official source. Check out the
   exact reviewed candidate in an isolated local tap. Set
   `HOMEBREW_NO_AUTO_UPDATE=1` during fixture transitions so a remote refresh
   cannot silently replace the test definition. Trust this cask only.
3. With SpaceBar quit normally, retain any manually installed guest copy in
   recovery. Test a normal install of the reviewed 2.4.2 recipe into
   `/Applications`. Do not use `--force`, `--adopt` or quarantine bypasses.
   Launch normally and verify the expected version/build, signature, settings
   window, artwork and preserved item identities. Inspect permission guidance;
   do not grant new access merely to complete packaging acceptance.
4. For a genuine upgrade, use a **guest-only** copy of this same recipe/token
   that points to the immutable public 2.4.1 archive. Verify its checksum from
   that release, install it normally, and record the preservation baseline.
   Restore the exact reviewed 2.4.2 recipe bytes, then use ordinary
   `brew upgrade --greedy --cask` for the fully qualified cask. Do not publish
   the older fixture or overwrite any existing recovery copy.
5. Launch 2.4.2/build42 after Homebrew replaces it. Verify the installed artifact
   against the published archive, configuration/layout byte preservation,
   persistent item IDs, support opt-out and login setting. Test normal
   quit/relaunch. Existing app-level updater/security evidence may be reused
   where unchanged; this is Homebrew packaging acceptance.
6. Run normal `brew uninstall --cask` and confirm the app is removed while
   settings, layouts and preferences remain. Reinstall the reviewed candidate
   and verify it reads those same items. Do not test destructive data deletion.
7. Retain recovery and truthful results. Remove only temporary test-feed/tap
   overrides, restore the intended guest state, and shut macOS down normally.

Record recipe commit, tested commands, exact downloaded archive hash, build,
installation/upgrade/removal/reinstallation results, preservation before/after,
signing/quarantine results and cleanup in the upstream private release record.
CI download/signature checks and older direct-download QA do not substitute for
this native Homebrew lifecycle check.
