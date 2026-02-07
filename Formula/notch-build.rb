class NotchBuild < Formula
  desc "CLI wrapper that emits build events to Notch Runtime Tools for Developers"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  version "0.1.0"
  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/notch-build-v#{version}-macos.tar.gz"
  sha256 "REPLACE_WITH_SHA256" # TODO: compute sha256 of the tarball and replace

  license "MIT"

  def install
    bin.install "notch-build"
  end

  test do
    assert_match "Usage: notch-build", shell_output("#{bin}/notch-build 2>&1", 1)
  end
end
