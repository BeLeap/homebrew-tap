class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2522.0.tar.gz"
  sha256 "77387b4464842ff7e50c8420f46991f774db929a1e173af92dff43a00dc8f88c"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.2521.1"
    sha256 cellar: :any_skip_relocation, ventura:      "8ca55739173b2dc183f9bd8d7229ef51221da7496ccf49146559624447f584c2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4a1f9810546d51fb140d6621895679521a4c3a407e16245f07a11058ef830726"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
