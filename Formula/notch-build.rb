class NotchBuild < Formula
  desc "CLI wrapper that emits build events to Notch Runtime Tools for Developers"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  version "0.1.8"
  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/notch-build-v#{version}-macos.tar.gz"
  sha256 "d15420c9ffa5d5e2fa55446460c99b42f7dccaf42541a6c908faca87cc9b1092"

  license "MIT"

  def install
    bin.install "notch-build"
  end

  test do
    assert_match "Usage: notch-build", shell_output("#{bin}/notch-build 2>&1", 1)
  end
end
