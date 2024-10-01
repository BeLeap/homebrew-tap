class KubectlCheck < Formula
  desc "Check for kubernetes metadata before executes command"
  homepage "https://github.com/BeLeap/kubectl-check"
  url "https://github.com/BeLeap/kubectl-check/archive/refs/tags/v0.2439.1.tar.gz"
  sha256 "5331205b35e1422820c904d06d2300c64336537cca8ee626af12bbf6039ae9bb"
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
