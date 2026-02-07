cask "notch-runtime-tools-for-developers" do
  version "0.1.8"
  sha256 "121784cab79b479586c7534c495bfa3f7683fda783e87884f870b7c49e13d03f"

  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/NotchRuntimeToolsForDevelopers-v#{version}.zip"
  name "Notch Runtime Tools for Developers"
  desc "Notch HUD for build progress"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  app "NotchRuntimeToolsForDevs.app"
end
