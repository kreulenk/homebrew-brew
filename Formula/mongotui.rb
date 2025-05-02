class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.6.0/mongotui-darwin-amd64.tar.gz"
  sha256 "db51253498addcf0ad224e196cc86c99f4112a811b1528f18bdc36bc61b68fa5"
  version "v1.6.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.6.0/mongotui-darwin-arm64.tar.gz"
    sha256 "f8e4d7c9a8d985f6541b49779a3fc63d1a2a200a0194527d33956b871206b848"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
