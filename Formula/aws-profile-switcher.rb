class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d9aa90e37a5216946700db0df82584e611d201405094451ed1863767d5af7112"
  license "MIT"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "2bc9d60cd2e9cfc2735823c26a75958f96aeb4e61b74c7e07728c97272d77203"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5a0fa1b7053926deac959c403d71c9ccc990020ee9242ec6430f81ac643544c4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
