class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.0.0/mongotui-darwin-amd64.tar.gz"
  sha256 "77b97d16d2054cecf9c4bbcc6ef23f07ebbab4045bd0d6f3a91fd3688e5f6142"
  version "v1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.0.0/mongotui-darwin-arm64.tar.gz"
    sha256 "cf1f9d2998e5abbc105a9698bcc2cf8e39baa9b8eefc1ffbc4f3a0d0cfd791f7"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
