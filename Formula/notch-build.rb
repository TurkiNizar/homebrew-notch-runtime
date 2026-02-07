class NotchBuild < Formula
  desc "CLI wrapper that emits build events to Notch Runtime Tools for Developers"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"
  version "0.1.16"
  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v0.1.16/notch-build-v0.1.16-macos.tar.gz"
  sha256 "a2edc0d67343ccb31628e3cea0bfdc5d21716905a315403e3d7c5e944ef90b8e"
  license "MIT"
  def install; bin.install "notch-build"; end
  test do; assert_match "Usage: notch-build", shell_output("#{bin}/notch-build 2>&1", 1); end
end
