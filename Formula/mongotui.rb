class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.5.0/mongotui-darwin-amd64.tar.gz"
  sha256 "4139dca7e62a29f6d45fa537e3cf922135d4545732aae3b6ecc78b3540259895"
  version "v1.5.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.5.0/mongotui-darwin-arm64.tar.gz"
    sha256 "138290835047c31e0493fe1fab596da345266f8b12a8275d8015dffe30a6fec5"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
