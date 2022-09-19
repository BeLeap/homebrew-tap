class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "0af6d59f42d1a9827c18d25ceb80d8d4cd6b6f0237d964e954e8671cb4d99bb5"
  license "MIT"
  head "https://github.com/BeLeap/aws-profile-switcher.git", branch: "main"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/aws-profile-switcher-0.1.5"
    sha256 cellar: :any_skip_relocation, big_sur:      "09a77b234f235e8c8fb18219a73f636f01f76bf1cd2d588e394a010a55ab30c5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3d8511b70ba475842759e17e145216b3b4cc82ea67cf90f023daed8707ecde70"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "apes", "-h"
  end
end
