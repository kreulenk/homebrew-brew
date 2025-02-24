class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.4.0/mongotui-darwin-amd64.tar.gz"
  sha256 "25e201558d4a47e6b179fd58313ba4c79f38d9d5b7b09979f349a74497091436"
  version "v1.4.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.4.0/mongotui-darwin-arm64.tar.gz"
    sha256 "9fdc1b93f8a6078044f708eaf699ffe5d435178b2fc0b7b96628e89e81cda234"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
