cask "notch-runtime-tools-for-developers" do
  version "0.1.1"
  sha256 "39f6139c0fc1adcd4770cfc0048aebc8f47953028f459e2d206c1442e0011033"

  url "https://github.com/TurkiNizar/notch-runtime-tools/archive/refs/tags/v#{version}.zip"
  name "Notch Runtime Tools for Developers"
  desc "Notch HUD for build progress"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  app "NotchRuntimeToolsForDevs.app"
end
