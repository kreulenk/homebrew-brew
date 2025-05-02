class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v1.2.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "b34e00660cba9b3e7dc86e346f28c378c324fe4cb8870a0948ab889190a16c44"
  version "v1.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v1.2.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "d96864f656480e73f7b7134a3e0fd75e00e305ae0d08d449e50b38df961e30cb"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
