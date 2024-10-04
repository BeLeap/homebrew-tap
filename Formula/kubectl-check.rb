class KubectlCheck < Formula
  desc "CLI tool to prompt user confirmation before running unsafe kubectl commands"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.6.tar.gz"
  sha256 "48ea8fc195264ff81949a8d00d8fc91483d580a10662952ccbbfe1cb5e47cb07"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.6"
    sha256 cellar: :any_skip_relocation, ventura:      "da3ed2efedbef481022869380f1024f51ba1db96bdbd935c8833abe37afe5842"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "94a2a572c2fc13708f8ed16be6d67a04d0e3f6cb085c2dfa9bc6dbc81255a3ac"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
