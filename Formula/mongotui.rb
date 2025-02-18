class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.1.0/mongotui-darwin-amd64.tar.gz"
  sha256 "154494ce853500b6ffea7f2bb0a4b24c36585c24f58643346e49e5e1d8a61256"
  version "v1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.1.0/mongotui-darwin-arm64.tar.gz"
    sha256 "47250ae5b53d0b3eab05e483d0ece626041982e75b8a11c0b52c988146763b40"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
