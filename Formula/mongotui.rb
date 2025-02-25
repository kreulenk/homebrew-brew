class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.4.1/mongotui-darwin-amd64.tar.gz"
  sha256 "9a3619a510fb626a51c9c35a4be02ac29cec837bd8e4be162b2f8b40fb1e0ef5"
  version "v1.4.1"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.4.1/mongotui-darwin-arm64.tar.gz"
    sha256 "6f7a8a7071884766b334355b52c82e01966d0226f726f2514b3f45dd939da1f3"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
