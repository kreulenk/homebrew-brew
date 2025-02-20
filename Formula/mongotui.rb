class Mongotui < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/kreulenk/mongotui"
  url "https://github.com/kreulenk/mongotui/releases/download/v1.2.0/mongotui-darwin-amd64.tar.gz"
  sha256 "275eef05a873c8719231b668fa534742a0e29b3a49c554053736437d69db2a58"
  version "v1.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/mongotui/releases/download/v1.2.0/mongotui-darwin-arm64.tar.gz"
    sha256 "4f7dcc2fc9a8b8bc4eda6340d37ea6d148fdd0ccaeb2db1d882bb0873e42202f"
  end

  def install
    bin.install "mongotui"
  end

  test do
    system "#{bin}/mongotui"
  end
end
