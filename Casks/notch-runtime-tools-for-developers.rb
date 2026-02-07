cask "notch-runtime-tools-for-developers" do
  version "0.1.7"
  sha256 "9486fbe97384e5672e52907da4960ceca95a235f713b5e9b6ce123c783baedce"

  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/NotchRuntimeToolsForDevelopers-v#{version}.zip"
  name "Notch Runtime Tools for Developers"
  desc "Notch HUD for build progress"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  app "NotchRuntimeToolsForDevs.app"
end
