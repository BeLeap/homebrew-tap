class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2521.1.tar.gz"
  sha256 "546a71ea16eb74b61a1aa2114f0d46896c82a8f360688557c80141f794727339"

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
