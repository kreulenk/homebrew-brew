class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.1.2/mongotui-darwin-amd64.tar.gz"
  sha256 "bf714ecf606b984ca798734ef0abe8e97e64c8cad33408b26de9796c8651f5eb"
  version "v1.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.1.2/mongotui-darwin-arm64.tar.gz"
    sha256 "0da61d86a9a39860e7be1479ea71c8f976645ad52f63e5ec73274f07beea61bb"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
