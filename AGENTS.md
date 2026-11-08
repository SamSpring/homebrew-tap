# SamSpring Homebrew packaging

Use plain, concise language. Lead with the result and distinguish verified checks from pending native acceptance. Keep detailed logs in private review records, not public commits.

This repository packages existing signed SpaceBar releases; it does not own app implementation. Preserve the app’s permanent identity, MenuBarSpacers configuration and support folder, saved item IDs/layouts, menu-bar placement preferences and login registration during upgrades.

Never test install, upgrade, removal, launch or quit against Samuel’s working Mac installation. Use an approved isolated test Mac/VM. Keep recovery copies and record the exact recipe revision and archive checksum. Do not bypass Gatekeeper or remove quarantine to manufacture a pass.

Casks must use immutable upstream downloads and real checksums. Do not introduce arbitrary install scripts, background update automation, broad process actions, credential operations or preference deletion. Normal removal keeps user data. Do not publish the candidate install command on main until native Homebrew lifecycle acceptance is recorded.

Public files must not contain personal paths, settings, credentials, private logs or app signing material. Maintain only the files needed for packaging and its documentation. Do not change the released app archive or update feed as part of a cask edit.
