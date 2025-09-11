class PioLocal < Formula
  desc "Context-optimized test runner adapter for AI agents (local test)"
  homepage "https://github.com/zk/3pio"
  version "0.0.2-local"
  license "MIT"

  # For local testing - using file:// URL
  url "file:///Users/zk/code/3pio/temp_release/3pio-darwin-arm64.tar.gz"
  sha256 "5e96117b9a1b6a806606cc9a29c37e1fb48d2fb8bc738278321cf4b7b40b19e9"

  def install
    bin.install "3pio"
  end

  test do
    assert_match "3pio version", shell_output("#{bin}/3pio --version")
  end
end