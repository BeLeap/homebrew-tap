class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "0af6d59f42d1a9827c18d25ceb80d8d4cd6b6f0237d964e954e8671cb4d99bb5"
  license "MIT"
  head "https://github.com/BeLeap/aws-profile-switcher.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.6"
    sha256 cellar: :any_skip_relocation, big_sur:      "8dbecd7194481d47a6c6f078ca0b6b92fa77cdb3ca4b625e18b8088524efd6ae"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4d7d20935f8abda11b43935049ae5ea2e5b6d3018fa4e334448a412b9ea489fa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
