class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.4.2/mongotui-darwin-amd64.tar.gz"
  sha256 "c493f70201e54c726c35386e3cf87b38f50db0a2c09a4a576ca49ba0f646af26"
  version "v1.4.2"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.4.2/mongotui-darwin-arm64.tar.gz"
    sha256 "82d052dc90e3f9b2a7fd7f9956a9c5d274139f6c03c37b04771ece42da9516e7"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
