class Bacio < Formula
  desc "Local-first issue tracker for AI agents, with CLI and TUI"
  homepage "https://github.com/mrgeoffrich/bacio"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.4/bacio-v1.0.4-darwin-arm64.tar.gz"
      sha256 "0faa2cbc51ba88b24ed2d91d3555b7cad5bc0f017b3d8940ad53fb9eae3e5ce4"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.4/bacio-v1.0.4-darwin-amd64.tar.gz"
      sha256 "37091f5c342407839d4294fbbbe29d994c110aaaf7d4be6d5e06ae2afbd29f28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.4/bacio-v1.0.4-linux-arm64.tar.gz"
      sha256 "0b65fd9791643123a2fbf9f93f9f11ae70fadd6d75cca7f8c02ef491f2c4bda5"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/bacio/releases/download/v1.0.4/bacio-v1.0.4-linux-amd64.tar.gz"
      sha256 "b098c0a090cd6c07eaa76a67ebd1b50c466c7582f2ab74cbe3b4be9120ddb432"
    end
  end

  def install
    bin.install "bacio"
  end

  test do
    assert_match "bacio", shell_output("#{bin}/bacio --help")
  end
end
