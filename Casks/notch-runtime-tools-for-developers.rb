cask "notch-runtime-tools-for-developers" do
  version "0.1.15"
  sha256 "2f7c3fa9f64db378b3d3b494051be8b6fef343d42b79b2502eaecbdd2de02add"

  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/NotchRuntimeToolsForDevelopers-v#{version}.zip"
  name "Notch Runtime Tools for Developers"
  desc "Notch HUD for build progress"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  app "NotchRuntimeToolsForDevs.app"
end
