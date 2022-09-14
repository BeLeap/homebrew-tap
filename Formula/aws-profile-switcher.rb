class AwsProfileSwitcher < Formula
  desc "AWS_PROFILE switcher"
  homepage "https://github.com/BeLeap/aws-profile-switcher"
  url "https://github.com/BeLeap/aws-profile-switcher/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ee207e5cd425220e746b94fbceec63fbd76326a9c0d18834011ae7630664f2c9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
