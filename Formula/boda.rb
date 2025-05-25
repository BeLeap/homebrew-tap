class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2521.1.tar.gz"
  sha256 "4f87e05ac2deb42ef085c87340174c26637c17f21d7c2daca846210cd24f6ddc"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.2521.0"
    sha256 cellar: :any_skip_relocation, ventura:      "fcbd4d88f6b23d801357de23ce4fafa5fd8ad40e4cc40dec204c0dd40c6a2770"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d8533a225b26cab692391948bacc02a86dd7bd460a31247df48267a21c74c0c0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
