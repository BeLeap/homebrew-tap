class KubectlCheck < Formula
  desc "Check for kubernetes metadata before executes command"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.3.tar.gz"
  sha256 "c6438ed6099ff66612eefe631a4289a157cde32910b34d666f0b9d5e059dc24f"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.2"
    sha256 cellar: :any_skip_relocation, ventura:      "2ee9ea001fa2c53b9c8680f8aa065f03e449d9725b633e79e65d11a6ff6fa2d1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "544bbca434a41e41e858a80d4a1a011365ee55ab76a1728dcff4da639357ab9b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
