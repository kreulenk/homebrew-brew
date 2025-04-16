class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v0.1.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "c1bfe20295fde0ef2c05f32c130e7755a5ba8d39ef85cd72f9271ff6778ca354"
  version "v0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v0.1.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "cee92474409b617ad0a3c73c8dc6d8d5dfc1858034cefdd1c96e6bf0d2a94b20"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
