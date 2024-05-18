class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "ed095e25c328a456b3d8868b90bbe4a652e1c8a6fbe42470e4b180f7aa27e49c"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/teleproxy-0.0.5"
    sha256 cellar: :any_skip_relocation, ventura:      "c3590e636be8d8792ece64dd1be49c778a22b0a84503d3b5b2012c022849f098"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3c8a178bfc412f97bd609feceb3d9d39a8c0372c11abd104d54258ca839a7175"
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
