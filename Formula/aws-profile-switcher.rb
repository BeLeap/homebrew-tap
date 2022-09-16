class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "f8f67c1f01bc345d2f6ba51ef22161d8feaacfa3e14e9b06d5ef8bfbd1a4adf6"
  license "MIT"
  head "https://github.com/BeLeap/aws-profile-switcher.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "aa59a3ac93f9a6dc7eb049d2c374b53105fc7b2313e46fe0dce3e55add21afd6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d828b83c890fdbd804cf20ff33c927c7749ed32bbdc15656ea467895467e6605"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
