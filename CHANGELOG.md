# Changelog

## v0.2.5 — protocol 111 — 2026-10-30

First public GitHub release of the current Multibonk build.

- Shared native chest/shrine reward choices for current living, loaded participants; individual selections remain personal.
- One shared boss chest, replacing the development version's chest-per-player model.
- Party pause and waiting status for native reward choices.
- Remote player facing sampled from the character renderer, plus owner skin selection packets.
- Remote renderer layer, material, texture and mesh-state improvements; visual issues remain open.
- Address input consumed once per frame to avoid repeated characters.
- Disabled the native live-particle array capture path after a reproducible native allocation crash; retained seed/time particle fallback.

[RAN] The release DLL compiled and loaded in an actual local host/client session. [SAW] Native gameplay was inspected; the owner reports the portal transition working. Remaining issues include remote textures/materials, imperfect remote VFX and unsynchronized hats. No comprehensive gameplay, WAN or cross-version compatibility claim is made.

Future versions will be published as separate tags and assets on the Releases page. Older untested/crashing development bundles are not published as supported releases.
