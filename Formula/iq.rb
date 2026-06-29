class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.0/iq-darwin-arm64"
      sha256 "32f519025c1f2a612cde42edb91a98a8426bbea66a8dd4788aebcfd61686a242"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.0/iq-darwin-x64"
      sha256 "654f52472138c1286eb89fb0d7c25daf429e38ce5b3e8ae78be5d3bfdc9cbc1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.0/iq-linux-arm64"
      sha256 "98b7c14d2d85c470546b5748bd440eb9a9bedbbd656d14602405afdbf79122c2"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.0/iq-linux-x64"
      sha256 "05933740726d23f744c63bd282216c7267ffbb5f63faedbf87c1f901f1cd39b6"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
