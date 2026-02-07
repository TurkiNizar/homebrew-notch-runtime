class NotchBuild < Formula
  desc "CLI wrapper that emits build events to Notch Runtime Tools for Developers"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  version "0.1.15"
  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/notch-build-v#{version}-macos.tar.gz"
  sha256 "864dd760ccf2ac5ae1a0101b452846de70aaac0dbac9b39b48bf528472a56454"

  license "MIT"

  def install
    bin.install "notch-build"
  end

  test do
    assert_match "Usage: notch-build", shell_output("#{bin}/notch-build 2>&1", 1)
  end
end
