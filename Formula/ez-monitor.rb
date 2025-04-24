class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v0.3.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "eacb0d3f2c5a24d16f6cbe1f55d0f6e13472e4cb1a5dee8e3647462f00c58248"
  version "v0.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v0.3.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "e96e533d0eb91d3c6ed7310c351c36794b8608092c7f406272507cf8daebc207"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
