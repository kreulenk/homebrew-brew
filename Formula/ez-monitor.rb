class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v0.4.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "9096ddea5f68c306d0f59ccf6fe205b7deaea29f99654d49fab6fb54fe6e2084"
  version "v0.4.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v0.4.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "4dc02f0f9b7b1459d1782efbec18f9733b682fa7486aea009b62f60823771f71"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
