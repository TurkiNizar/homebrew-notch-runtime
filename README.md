# Notch Runtime Tools for Developers (Homebrew Tap)

Install the CLI wrapper and notch HUD app via Homebrew.

## Install
```sh
brew tap TurkiNizar/homebrew-notch-runtime
brew install notch-build
brew install --cask notch-runtime-tools-for-developers   # unsigned; see Gatekeeper note
```

Upgrade:
```sh
brew update
brew upgrade notch-build
brew upgrade --cask notch-runtime-tools-for-developers
```

Uninstall:
```sh
brew uninstall notch-build
brew uninstall --cask notch-runtime-tools-for-developers
```

## Gatekeeper (unsigned)
The app is unsigned/not notarized. On first launch macOS may block it. Allow by right‑click → Open, or strip quarantine:
```sh
xattr -dr com.apple.quarantine /Applications/NotchRuntimeToolsForDevs.app
```

## CLI usage
Launch the app, then run builds through the wrapper:
```sh
notch-build mvn clean install
notch-build ./gradlew test
notch-build npm run build
```
Quick sanity:
```sh
notch-build /bin/true    # success
notch-build /bin/false   # failure
```

## Release automation
Tags in `notch-runtime-tools` build/upload artifacts and auto-update this tap (version/URLs/SHA256) via the workflow. Manual edits are normally unnecessary.
