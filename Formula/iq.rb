class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.1/iq-darwin-arm64"
      sha256 "4637ca912df529510247ec6cfe8713ba1ea173979eb6cb7377526bc36f35917a"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.1/iq-darwin-x64"
      sha256 "e8ee20ddb20aa53ffec846e4438ed9338d2ec5484b43e221e133d4875dc12d1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.1/iq-linux-arm64"
      sha256 "2b006a266e3c459e1b73fc158d58ebaec0664d2204e6d55ec7f9bee70f9ea97c"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.1/iq-linux-x64"
      sha256 "0d6579c015580efb0abf522f922299c82fb3d13a42fc67622951fa6f139d5d60"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
