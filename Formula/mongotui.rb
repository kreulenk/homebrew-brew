class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.0.1/mongotui-darwin-amd64.tar.gz"
  sha256 "05e2f7b127b8c60a636f4c2e656df26c3f15290ad56198c513c73ffbcd0508ef"
  version "v1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.0.1/mongotui-darwin-arm64.tar.gz"
    sha256 "6079c0f5871ab44aa68ced8f1e28d1d26c620573e7639b5a211ee94274d5e2ec"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
