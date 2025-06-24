class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2526.0.tar.gz"
  sha256 "0eee5d009d2064d2dbf67406fc612ce7e469082cbcaed562916bcb2db32620ee"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.2526.0"
    sha256 cellar: :any_skip_relocation, ventura:      "643e136f14c0b1d76db438a5951db2b0a86b132df9173e26f38b387addb33b43"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9b72102bb919d4c780bf52363914010129f3b56f76ad5ac9961b66be9bb83507"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
