class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v1.1.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "2f4edc9f1b2501ac2eb026f4d2d28f883288dd20b42e10568818ed7776ca47bc"
  version "v1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v1.1.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "502d87998a77002222101258101f8f2b4b88dddee0c4c6e722bc71cf99d99365"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
