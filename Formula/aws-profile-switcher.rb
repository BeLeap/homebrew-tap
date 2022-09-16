class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "f8f67c1f01bc345d2f6ba51ef22161d8feaacfa3e14e9b06d5ef8bfbd1a4adf6"
  license "MIT"
  head "https://github.com/BeLeap/aws-profile-switcher.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.4"
    sha256 cellar: :any_skip_relocation, big_sur:      "05ef21d066a08ff7cb118e0d3c60742818e166306ca4ff01f6bb7d4ba0aa3c1a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6e766896b82e6a9624fcc4cf6dac767e7f2f7ad5ffd830b3d7bdfc3aa3f57849"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
