# Notch Runtime Tools for Developers (Homebrew Tap)

Install the CLI wrapper and the notch HUD app via Homebrew.

## Usage

```sh
brew tap yourorg/notch-runtime
brew install notch-build
# optional app cask (signed/notarized zip or dmg)
brew install --cask notch-runtime-tools-for-developers
```

## Formula

`Formula/notch-build.rb` installs the signed `notch-build` binary.

## Cask (optional)

`Casks/notch-runtime-tools-for-developers.rb` installs the signed `.app` bundle.

## Releasing

1) Produce signed/notarized artifacts:
   - CLI tarball: `notch-build-vX.Y.Z-macos.tar.gz` containing `notch-build`.
   - App zip/dmg: `NotchRuntimeToolsForDevelopers-X.Y.Z.zip` containing `NotchRuntimeToolsForDevs.app`.
2) Upload to a stable URL (e.g., GitHub Releases).
3) Update URL, version, and sha256 in the formula/cask (e.g., `shasum -a 256 file.tar.gz`).
4) Push the tap repo and test:
   ```
   brew untap TurkiNizar/homebrew-notch-runtime  # if already tapped
   brew tap TurkiNizar/homebrew-notch-runtime
   brew install notch-build
   brew install --cask notch-runtime-tools-for-developers
   ```
