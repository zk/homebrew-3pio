class Threepio < Formula
  desc "Context-optimized test runner adapter for AI agents"
  homepage "https://github.com/zk/3pio"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zk/3pio/releases/download/v0.0.2/3pio-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    else
      url "https://github.com/zk/3pio/releases/download/v0.0.2/3pio-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zk/3pio/releases/download/v0.0.2/3pio-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    else
      url "https://github.com/zk/3pio/releases/download/v0.0.2/3pio-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install "3pio"
  end

  test do
    assert_match "3pio version", shell_output("#{bin}/3pio --version")
  end
end