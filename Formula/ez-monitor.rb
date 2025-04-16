class EZMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v0.1.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "251f959c1c1141abbbb8ffd603f72f7d837cfc9330985c24de22644be17629a9"
  version "v0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v0.1.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "083f0c070b964d69e9527f94646ca31940be063ed58ec6337018a3c199d18ce9"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
