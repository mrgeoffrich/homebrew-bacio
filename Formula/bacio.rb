class Bacio < Formula
  desc "Local-first issue tracker for AI agents, with CLI and TUI"
  homepage "https://github.com/mrgeoffrich/bacio"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.1/bacio-v1.1.1-darwin-arm64.tar.gz"
      sha256 "c5475ff74ac841718bd9dca519f06e4bd5c2cf92feddabd0852add82791e2104"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.1/bacio-v1.1.1-darwin-amd64.tar.gz"
      sha256 "e72fd9c4c153ee9bf4e35bb4cb696c1e362e7cac220734806ae83cf22b3923dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.1/bacio-v1.1.1-linux-arm64.tar.gz"
      sha256 "889118515543548d544b2f60aafcd0396d535fc19520eb7d00a352f99412afc0"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.1/bacio-v1.1.1-linux-amd64.tar.gz"
      sha256 "18f9733d41772cc3712d11936681290cf1e5dd657cb85616d6e2415a7422ef26"
    end
  end

  def install
    bin.install "bacio"
  end

  test do
    assert_match "bacio", shell_output("#{bin}/bacio --help")
  end
end
