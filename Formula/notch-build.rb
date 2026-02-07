class NotchBuild < Formula
  desc "CLI wrapper that emits build events to Notch Runtime Tools for Developers"
  homepage "https://github.com/TurkiNizar/homebrew-notch-runtime"

  version "0.1.1"
  url "https://github.com/TurkiNizar/notch-runtime-tools/archive/refs/tags/v#{version}.tar.gz"
  sha256 "ed58dabbbe9022a4b23c544095afcf42ef1aa79dcce91e1a245266b33289ff2d"

  license "MIT"

  def install
    bin.install "notch-build"
  end

  test do
    assert_match "Usage: notch-build", shell_output("#{bin}/notch-build 2>&1", 1)
  end
end
