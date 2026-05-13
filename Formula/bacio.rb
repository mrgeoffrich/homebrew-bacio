class Bacio < Formula
  desc "Local-first issue tracker for AI agents, with CLI and TUI"
  homepage "https://github.com/mrgeoffrich/bacio"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.0/bacio-v1.1.0-darwin-arm64.tar.gz"
      sha256 "6a004d55d8e1c02ab267c6dd7b1511a2a7e39e8f5fb5ec606d233e3a224bf9c6"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.0/bacio-v1.1.0-darwin-amd64.tar.gz"
      sha256 "e8b35e6db24f802f16ecd120ebd1807ae73f62ea88a8b376b24ac3955c388975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.0/bacio-v1.1.0-linux-arm64.tar.gz"
      sha256 "3325673d66158e4e6afbe6a6b05af924e12ba657102e7c21560edff34c5627ad"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.1.0/bacio-v1.1.0-linux-amd64.tar.gz"
      sha256 "78542df6f08c249cf92353fe30a1f832c65743aa77bacd4bb6023da7597fbcc2"
    end
  end

  def install
    bin.install "bacio"
  end

  test do
    assert_match "bacio", shell_output("#{bin}/bacio --help")
  end
end
