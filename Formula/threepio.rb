class Threepio < Formula
  desc "Context-optimized test runner for AI coding agents"
  homepage "https://github.com/zk/3pio"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zk/3pio/releases/download/v0.2.0/3pio-darwin-arm64.tar.gz"
      sha256 "eff387e48d0aa8d37c7edf1bd5c14ef06b159bec4ac23c45808c24168bfaf569"
    else
      url "https://github.com/zk/3pio/releases/download/v0.2.0/3pio-darwin-amd64.tar.gz"
      sha256 "1d9335237735edfe839961b49e978c4dbc125a891c30d1e937fc62246fba59e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zk/3pio/releases/download/v0.2.0/3pio-linux-arm64.tar.gz"
      sha256 "8a61a0c2095c3cfffe6ce5f416c5eb88adc5b915826d9b7e547e34a90071952c"
    else
      url "https://github.com/zk/3pio/releases/download/v0.2.0/3pio-linux-amd64.tar.gz"
      sha256 "e6a2347dce8b7563b41958a336c6c8068ca83351a742f23e5ca31484d0a5f692"
    end
  end

  def install
    bin.install "3pio"
  end

  test do
    assert_match "3pio version", shell_output("#{bin}/3pio --version")
  end
end