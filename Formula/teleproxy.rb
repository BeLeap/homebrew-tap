class Teleproxy < Formula
  desc "spy and proxy tele-location"
  homepage "https://github.com/BeLeap/teleproxy"
  url "https://github.com/BeLeap/teleproxy/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9b4c86ef8595c3d6aa53ed31f397ea7cbabd72022d9000a1049673983c85e7c4"
  license "MIT"

  depends_on "go@1.21" => :build

  def install
    system "go", "install", "./cmd/teleproxy"
  end

  test do
    system "false"
  end
end
