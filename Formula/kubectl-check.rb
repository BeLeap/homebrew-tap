class KubectlCheck < Formula
  desc "CLI tool to prompt user confirmation before running unsafe kubectl commands"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2440.0.tar.gz"
  sha256 "3de3986fe4993b95375f5ce9337bb9539b6e7ae0c643db83383f10028e129fb1"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2440.0"
    sha256 cellar: :any_skip_relocation, ventura:      "c5d7bdb997e37740c00e80cdc4276cc17ee1c8532f704e84862e736f4f4970cf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "603458a7604c7125fad6b8593b7e852453fd6ba1eb67adf8a986270c12d6dbf0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
