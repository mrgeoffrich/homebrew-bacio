class Bacio < Formula
  desc "Local-first issue tracker for AI agents, with CLI and TUI"
  homepage "https://github.com/mrgeoffrich/bacio"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.3/bacio-v1.0.3-darwin-arm64.tar.gz"
      sha256 "c66ae919da5784b3ab76a1dfb68c5095b2fcc63efe89e4c20b867ed41c2b10cb"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.3/bacio-v1.0.3-darwin-amd64.tar.gz"
      sha256 "d1adbf1875ad35621fd006de1e4d46d7b76b2e305324c5cdb85822be42f7ded3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.3/bacio-v1.0.3-linux-arm64.tar.gz"
      sha256 "9d012aad57b90babcdb2489bbe14a1c57e39574b6082ab11d6b91a45b43e0ee5"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.3/bacio-v1.0.3-linux-amd64.tar.gz"
      sha256 "da0567940b82c3c9c7e409f766473fa335de7d37dbb7ccc65daa9314c2c38511"
    end
  end

  def install
    bin.install "bacio"
  end

  test do
    assert_match "bacio", shell_output("#{bin}/bacio --help")
  end
end
