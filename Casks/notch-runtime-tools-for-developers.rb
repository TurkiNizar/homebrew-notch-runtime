cask "notch-runtime-tools-for-developers" do
  version "0.1.16"
  sha256 "fa06d4937b4e8221db3caf0d2a40088b82670db9bf16de7ccd7a98f75d9334ed"
  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v0.1.16/NotchRuntimeToolsForDevelopers-v0.1.16.zip"
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
