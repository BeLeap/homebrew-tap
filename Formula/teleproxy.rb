class Teleproxy < Formula
  desc "Spy and proxy http request on tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "20125ba9d2b4feda126c2475c7feebd50b66642bb51ab285991cc3c6a4b9f1f1"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/teleproxy-0.0.9"
    sha256 cellar: :any_skip_relocation, ventura:      "fa9792f73168111c3efb0cc04085ca686025ddce04e13196fa5b451320d2bf6f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cda5de3d155cb0b903450091438b0d60cfdd39b7f889259f4324efd48a4367b3"
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
