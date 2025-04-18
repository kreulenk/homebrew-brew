class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v0.2.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "c7bf234f02ca6d16acce2651fc71587df78467d7c8d8f3c00d23b0d1c54e8511"
  version "v0.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v0.2.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "ec50c697b1f4c90db59358517be74e3b9d0a05694f669429def96900ea104091"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
