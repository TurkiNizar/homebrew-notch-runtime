class NotchBuild < Formula
  desc "CLI wrapper that emits build events to Notch Runtime Tools for Developers"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  version "0.1.7"
  url "https://github.com/TurkiNizar/notch-runtime-tools/releases/download/v#{version}/notch-build-v#{version}-macos.tar.gz"
  sha256 "3cceb15cbff4b18278efe751411d77b1989aa7ecf48afc694ab8554ad3ce728b"

  license "MIT"

  def install
    bin.install "notch-build"
  end

  test do
    assert_match "Usage: notch-build", shell_output("#{bin}/notch-build 2>&1", 1)
  end
end
