class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "836b803d5d04e39e48b2f5108b83486bf8d6a642a5d6777d87a7ad591fd0a0b2"
  license "MIT"
  head "https://github.com/BeLeap/aws-profile-switcher.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.7"
    sha256 cellar: :any_skip_relocation, big_sur:      "bdb70b33816c6957f07033c68003f970f6ceef0e7f69074511f2c10eb0a462c6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e0ac1af2dfdda6e2aa708e51d33c5fe389fe3e5af3ed3cf631f6abcbdbcc56e7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
