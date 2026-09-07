class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.4.0/iq-darwin-arm64"
      sha256 "36a3a3b9566628c52301229cd26d5cbc1a4d4e7eab99a3a28a494e2900d8eb9c"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.4.0/iq-darwin-x64"
      sha256 "6bc978c3315a178f465ec686e450cd51bd4a111c074d57c22478053b19521518"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.4.0/iq-linux-arm64"
      sha256 "bbde53e89d11f1702eb6d9ecd2845d917a24ac7c43f04a6a31567689e66e8766"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.4.0/iq-linux-x64"
      sha256 "defd1915e017f5b288c8052d7b03115abcef8a8a2c358d1ef38cbfdbeb9a1442"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
