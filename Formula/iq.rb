class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.2/iq-darwin-arm64"
      sha256 "0a119ce26b91871130db4447ce6af80532926a0a5835dbe9af5bc7fb80dc6253"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.2/iq-darwin-x64"
      sha256 "92b4ce892a9d6e07301e259ae189483107fa271aaa747bd7921667471bb2d942"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.2/iq-linux-arm64"
      sha256 "5afdcd8a147d784c2ea4cd6087ae89ce31b19f5dfba0b82e31264fa83e9b842b"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.2/iq-linux-x64"
      sha256 "746372947ba5c9830b864e0a77be8dbfc85fce35d95d6276ed6429404d01bb6a"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
