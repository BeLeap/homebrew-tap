class KubectlCheck < Formula
  desc "Check for kubernetes metadata before executes command"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.0.tar.gz"
  sha256 "c101bd51d950c937025e42315ffa1b40411ec097e30dd035733d4d0887482d67"
  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
