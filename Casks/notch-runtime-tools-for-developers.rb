cask "notch-runtime-tools-for-developers" do
  version "0.1.15"
  sha256 "2f7c3fa9f64db378b3d3b494051be8b6fef343d42b79b2502eaecbdd2de02add"

  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/NotchRuntimeToolsForDevelopers-v#{version}.zip"
  name "Notch Runtime Tools for Developers"
  desc "Notch HUD for build progress"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  app "NotchRuntimeToolsForDevs.app"

  postflight do
    plist_src = "#{staged_path}/launch/com.notch-runtime-tools.plist"
    plist_dst = File.expand_path("~/Library/LaunchAgents/com.notch-runtime-tools.plist")
    ohai "Installing LaunchAgent to start Notch Runtime Tools for Developers at login..."
    system_command "/bin/mkdir", args: ["-p", File.dirname(plist_dst)]
    system_command "/bin/cp", args: [plist_src, plist_dst]
    system_command "/bin/launchctl", args: ["unload", plist_dst], sudo: false, must_succeed: false
    system_command "/bin/launchctl", args: ["load", plist_dst]
  end
end
