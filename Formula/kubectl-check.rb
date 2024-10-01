class KubectlCheck < Formula
  desc "CLI tool to prompt user confirmation before running unsafe kubectl commands"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.3.tar.gz"
  sha256 "c6438ed6099ff66612eefe631a4289a157cde32910b34d666f0b9d5e059dc24f"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.3"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura:      "9b6ed7eb5a080236d241a2c7452695ae27f336494d55b1d232174a15a7701834"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bf044b608960d71e4fe32ee21f0834b238f95906b359870e08b4b85f90d1764e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
