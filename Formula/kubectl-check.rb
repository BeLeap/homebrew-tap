class KubectlCheck < Formula
  desc "CLI tool to prompt user confirmation before running unsafe kubectl commands"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.5.tar.gz"
  sha256 "45e97b8f7da4af9fe1f1d460910f6baf34b3e61ca726787ded2090b779281346"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.4"
    sha256 cellar: :any_skip_relocation, ventura:      "101dc97d92821237dd3c4d085c14df3527c22b45282ac24856ffd9d4b18f45a2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d322b234f771998f57d4b9c5970d27997169f6cf3df50d83e363f116ca408a65"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
