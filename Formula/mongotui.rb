class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.3.0/mongotui-darwin-amd64.tar.gz"
  sha256 "f81d0f958c2ec3a06d8f3e6e864257632e9cbc2de819acc5fd2d20ef070f511a"
  version "v1.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.3.0/mongotui-darwin-arm64.tar.gz"
    sha256 "d25a801196fb122d2d4a0de29b1b78091b317e6f0862a91ad3e36ae690e98931"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
