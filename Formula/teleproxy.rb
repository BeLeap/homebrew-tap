class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "80a3e9477fbc20f0edf233c8eb293b8d39ddf3585f9ba2cc5d6b654044bd9bb3"
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
