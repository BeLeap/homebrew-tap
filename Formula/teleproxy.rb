class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "c49a8526a889fcd5508dd621dce9373677d4f852bd1dddc0622de8891718d001"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/teleproxy-0.0.5"
    sha256 cellar: :any_skip_relocation, ventura:      "9b9bd8f1d8370324d76447f1a9b0556f26ca3fbbe84e92e7bd1240ee65bea753"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7589523d9b810c5dabf32ec358e73690a52aef8fb6e2a0cb889b8fdcdd384953"
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
