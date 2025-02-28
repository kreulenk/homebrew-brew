class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.5.1/mongotui-darwin-amd64.tar.gz"
  sha256 "2a6691d8edf38a01e1e7d677510a6aa60070e270637c3c572cce5c891bdf0962"
  version "v1.5.1"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.5.1/mongotui-darwin-arm64.tar.gz"
    sha256 "8f5cb20690bbbd781a489e46bc4445b0817dbac14a8a6344b7f13e834cd75d46"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
