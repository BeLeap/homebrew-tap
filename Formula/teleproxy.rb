class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "714037cf339b3009eb1f3e4d4256b9045b9f7493771a06132fa2640ff324c0da"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/teleproxy-0.0.7"
    sha256 cellar: :any_skip_relocation, ventura:      "a7e744df0fbbb6b03717dd475fc3d727322b8e6fa7c9de0da667d893e90d68f3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b3225b5795b0e17e92d3ad26de8978d5b653834c1bf10b6aa9fb03a3e5d0883"
  end

  depends_on "go@1.21" => :build

  def install
    system "go", "build", "./cmd/teleproxy"
    bin.install "teleproxy"
  end

  test do
    system "#{bin}/teleproxy", "-h"
  end
end
