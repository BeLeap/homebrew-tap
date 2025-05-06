class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "28a73d84495d3f660268aceb0a2bda9751baddcee8826583522904923da305dc"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
