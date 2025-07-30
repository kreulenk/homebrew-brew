class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.6.1/mongotui-darwin-amd64.tar.gz"
  sha256 "92bb6b7ed48f244e3f9a5c8197391f31c8a72f6a7b79203d5ebfaa4109ad23da"
  version "v1.6.1"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.6.1/mongotui-darwin-arm64.tar.gz"
    sha256 "bbbc68d807174c560ee7b1628b404304cd0544386799fc6ae89b24208ea20a34"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
