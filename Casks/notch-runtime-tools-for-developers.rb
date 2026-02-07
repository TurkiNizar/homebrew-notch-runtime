cask "notch-runtime-tools-for-developers" do
  version "0.1.0"
  sha256 "REPLACE_WITH_SHA256" # TODO: compute sha256 of the signed/notarized zip/dmg

  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/NotchRuntimeToolsForDevelopers-#{version}.zip"
  name "Notch Runtime Tools for Developers"
  desc "Notch HUD for build progress"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  app "NotchRuntimeToolsForDevs.app"
end
