class LongRunningNotify < Formula
  desc "Long Running Command Notifier"
  homepage "https://github.com/BeLeap/long-running-notify"
  url "https://github.com/BeLeap/long-running-notify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "071dd403d0908651eee5eb2902dec03df6310c1e9455d3615cb164eeefa00b2d"
  license "MIT"
  head "https://github.com/BeLeap/long-running-notify.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/long-running-notify-0.1.0"
    sha256 cellar: :any_skip_relocation, monterey:     "156e99ecb579cdddf85f429198f08738667205de0412f52464ab63c025ce3cdd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a1cf3a4f4e136ac77d96f03d4f76303992cd0bde23bf038bcd22ac5653aa939e"
  end

  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "lrn", "-h"
  end
end
