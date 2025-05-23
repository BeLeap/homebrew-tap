class Boda < Formula
  desc "Opinionated alternative watch"
  homepage "https://github.com/BeLeap/boga"
  url "https://github.com/BeLeap/boda/archive/refs/tags/0.2521.0.tar.gz"
  sha256 "e072ff2809a3a222bc95629b9bcad842cf422e39ecb15aee91b3069ca920f0d4"

  license "MIT"
  head "https://github.com/BeLeap/boda.git", branch: "master"

  bottle do
    root_url "https://github.com/BeLeap/homebrew-tap/releases/download/boda-0.2520.0"
    sha256 cellar: :any_skip_relocation, ventura:      "f692a351cc5fe988a927092823ebdbe4b240748013f79bf94c0a6ec549e89d72"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "566879bef9af2a546839f788591fb4ac5a37b5fecde63d17cfd4abecd6de67d3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
