class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.1.0/mongotui-darwin-amd64.tar.gz"
  sha256 "78050890559f192fea39bc9060672046840cb82af48e7410f4671cb9e4ff6dfd"
  version "v1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.1.0/mongotui-darwin-arm64.tar.gz"
    sha256 "21a6ce352bb7f137e64d9e0f97e5af3901b0744c3b3d6046485dce6738ffdd54"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
