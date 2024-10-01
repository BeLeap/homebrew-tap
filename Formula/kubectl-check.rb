class KubectlCheck < Formula
  desc "CLI tool to prompt user confirmation before running unsafe kubectl commands."
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.3.tar.gz"
  sha256 "c6438ed6099ff66612eefe631a4289a157cde32910b34d666f0b9d5e059dc24f"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.3"
    sha256 cellar: :any_skip_relocation, ventura:      "30a317186de69dbd45b4dc2558713bf1399c9bd5b49c52f4b2a2b0f190f2d258"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "07b42e0225250310fc9b6c64915b10e2064fa0e8be43027863b498f280083c8e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
