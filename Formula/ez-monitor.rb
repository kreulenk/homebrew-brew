class EzMonitor < Formula
  desc "A tool to easily monitor your infrastructure via ssh"
  homepage "https://github.com/kreulenk/ez-monitor"
  url "https://github.com/kreulenk/ez-monitor/releases/download/v1.0.0/ez-monitor-darwin-amd64.tar.gz"
  sha256 "c0adc19c1c8af1b019f2b64f84512d8c0228936e8cc7bffb53a08857b8c5282b"
  version "v1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/kreulenk/ez-monitor/releases/download/v1.0.0/ez-monitor-darwin-arm64.tar.gz"
    sha256 "0f7ace1935872c70dbec16495e3b8994e560e10dc8bba584d0d3c7dd35f4b560"
  end

  def install
    bin.install "ez-monitor"
  end

  test do
    system "#{bin}/ez-monitor"
  end
end
