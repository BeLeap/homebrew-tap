class KubectlCheck < Formula
  desc "CLI tool to prompt user confirmation before running unsafe kubectl commands"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.6.tar.gz"
  sha256 "48ea8fc195264ff81949a8d00d8fc91483d580a10662952ccbbfe1cb5e47cb07"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.5"
    sha256 cellar: :any_skip_relocation, ventura:      "211fceb4f3712d50f017b0baa1ec6140e040f1fa1fdbf115809bb0afc0052dd7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f7e536d6c8a7fe63d155778d842c720f3a0658190676f9bb4c9fdc9441f2d967"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
