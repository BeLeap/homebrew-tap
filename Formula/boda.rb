class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boda"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2526.0.tar.gz"
  sha256 "0eee5d009d2064d2dbf67406fc612ce7e469082cbcaed562916bcb2db32620ee"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.2526.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, x86_64_linux: "35a4f45f2ff73993287fa9bd05d5d6664356d511d7033dbe1a1a81f044b69ee0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
