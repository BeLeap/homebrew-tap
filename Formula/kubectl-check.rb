class KubectlCheck < Formula
  desc "Check for kubernetes metadata before executes command"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.2.tar.gz"
  sha256 "7f0f072eccd32dc210d7a6b322ff70e7ada873175372defa956098f51d4f3c82"

  license "MIT"
  head "https://github.com/BeLeap/kubectl-check.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/kubectl-check-0.2439.1"
    sha256 cellar: :any_skip_relocation, ventura:      "6c52d6c2cbcc8c9d3a810a8e0a965557aa5d065161b56ea7fe2b5567864a5e97"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0e8b3e640b6376ffb2b30b87ec618217daf7b2b733ff9276624204016284788c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
