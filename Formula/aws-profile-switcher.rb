class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d9aa90e37a5216946700db0df82584e611d201405094451ed1863767d5af7112"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "67bc2920925b4efef25391466a647625f9a2dfa7b1bd9438937425a8e993adf3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b708c7418ef666cb2d3eaaa9bf1186876851fe3236d1dc1b623e1e352f82d1a9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
