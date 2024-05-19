class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "714037cf339b3009eb1f3e4d4256b9045b9f7493771a06132fa2640ff324c0da"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/teleproxy-0.0.6"
    sha256 cellar: :any_skip_relocation, ventura:      "da82ecc285cc39c2c55590a17171821ea3fb695bf78ef7111803d02ce02f9403"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a92221da02f0869f5cd7a00c80cfdbba5ed7507ecceabb0a4e4d61eef829aae6"
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
