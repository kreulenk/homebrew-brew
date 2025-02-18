class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.1.1/mongotui-darwin-amd64.tar.gz"
  sha256 "d3e981cd13a4b92d5b7d44e0eba3b0c96331b2fa27da1c5cc82700ee23ce7fa0"
  version "v1.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.1.1/mongotui-darwin-arm64.tar.gz"
    sha256 "a64d6f2cb03959c312c3573222152a8d56af51162301ec355f913708f0b1ba93"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
