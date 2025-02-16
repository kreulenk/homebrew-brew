class Mongotui < Formula
    desc "A TUI for MongoDB"
    homepage "https://github.com/kreulenk/mongotui"
    url "https://github.com/kreulenk/mongotui/releases/download/v1.0.0/mongotui-darwin-amd64.tar.gz"
    sha256 "b0481c6dbf257e34268898ccc9f38c0f87e99a1f4cdcbafaca9afb86c0dc63ca"
    version "v1.0.0"
  
    if Hardware::CPU.arm?
      url "https://github.com/kreulenk/mongotui/releases/download/v1.0.0/mongotui-darwin-arm64.tar.gz"
      sha256 "0a2c4526f678905921146305f3b304254770f06bc69fb07e23b3a9ab0cb77218"
    end
  
    def install
      bin.install "mongotui"
    end
  
    test do
      system "#{bin}/mongotui"
    end
  end
  