class KubectlCheck < Formula
  desc "Check for kubernetes metadata before executes command"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.0.tar.gz"
  sha256 "c101bd51d950c937025e42315ffa1b40411ec097e30dd035733d4d0887482d67"
  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.0"
    sha256 cellar: :any_skip_relocation, ventura:      "68ca89a24ad88469e52011b77f8968e937244a2275669e8095814cb0a8ce6c61"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7cf17fef1e8270ab379f83273e8af86b5d94739c19b972232ab9b0ce439745e6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
