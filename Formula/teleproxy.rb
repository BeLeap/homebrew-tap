class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "80a3e9477fbc20f0edf233c8eb293b8d39ddf3585f9ba2cc5d6b654044bd9bb3"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/teleproxy-0.0.8"
    sha256 cellar: :any_skip_relocation, ventura:      "c82f4ac5a56b15bf03f7ef40f22ba6af4e43e37f6d60e5aba01e8ac90e23f83d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3d348984198822945820921546487128a386a8f520f7bdecc57479d0898dc9ae"
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
