class LongRunningNotify < Formula
  desc "Long Running Command Notifier"
  homepage "https://github.com/BeLeap/long-running-notify"
  url "https://github.com/BeLeap/long-running-notify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "071dd403d0908651eee5eb2902dec03df6310c1e9455d3615cb164eeefa00b2d"
  license "MIT"
  head "https://github.com/BeLeap/long-running-notify.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "lrn", "-h"
  end
end
