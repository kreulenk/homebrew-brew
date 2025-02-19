class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.1.3/mongotui-darwin-amd64.tar.gz"
  sha256 "3bf441e44a04f0988a81aa9b83906e2cf474a2595f958047060a2b0e58971893"
  version "v1.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.1.3/mongotui-darwin-arm64.tar.gz"
    sha256 "53c5846f85dd2446f08074d4a36cb0c83a0596ea601c6b5063dfebcf7c4ac59d"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
