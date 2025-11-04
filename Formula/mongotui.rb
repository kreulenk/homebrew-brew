class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.6.2/mongotui-darwin-amd64.tar.gz"
  sha256 "1d223d397d99b49014c594d344bf3c5b71bebaa02affee99d8c2a66d93b57503"
  version "v1.6.2"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.6.2/mongotui-darwin-arm64.tar.gz"
    sha256 "ec4672b399ad3df395486070ece2ab45e659e2b564f4a5c5c39c7c9b1ce1bf33"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
