class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.0/iq-darwin-arm64"
      sha256 "d38f63d06c8c81e940342baa5379f0c12b5ad3f323081e0199ddef174c8973ce"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.0/iq-darwin-x64"
      sha256 "f6b046bd1ff039c48a0487f619229b18c00adc102ff260b22ac9e7dc72d18d7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.0/iq-linux-arm64"
      sha256 "aa07fef446de261951dda13c745b5fd1b6f5b3ef2da48958a3c7214cd92bf537"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.0/iq-linux-x64"
      sha256 "58eb36dc0a24caa43cbcb78660cc4b7cfa0204a9241cc9ad86bb3f73ac81a793"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
