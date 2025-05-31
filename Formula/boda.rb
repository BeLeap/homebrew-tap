class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2522.0.tar.gz"
  sha256 "77387b4464842ff7e50c8420f46991f774db929a1e173af92dff43a00dc8f88c"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.2522.0"
    sha256 cellar: :any_skip_relocation, ventura:      "14d29c611ec00a3f27710bad90e84f63ba7a3d876532c127da3e20d02d362ba2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "916e472ab6e024a510fdf8f8713da9be9b5e5b7a04693a0887d699a011dadeb1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
