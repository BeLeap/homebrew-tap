class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2520.0.tar.gz"
  sha256 "8b07fa43e069d27276c97889a805f8659116a491cee35b8f8af8685500c568ee"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.6.1"
    sha256 cellar: :any_skip_relocation, ventura:      "91c0643016641d56fef97f457da677236f5ec3f37a6f8141e73481bcd086b275"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a6723e0e2822edc3d8a0cfd2f981ca661db43c36ef68bf74fe96aa2bdb4dd88a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
