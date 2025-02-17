class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.1.0/mongotui-darwin-amd64.tar.gz"
  sha256 "3a06c2f32d55db97a4df0a5e860b61aa88c0c3a81098c52c1872a463d73ff856"
  version "v1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.1.0/mongotui-darwin-arm64.tar.gz"
    sha256 "fb6cacfdaaf8b32a608f60a9b76fe59bffe66f58ec3ddcf5c1520a3648118f62"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
