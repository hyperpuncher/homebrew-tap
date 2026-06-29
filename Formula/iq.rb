class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.2/iq-darwin-arm64"
      sha256 "766fc8db8fba265c14fbcaf0be0c901f12487a5f50bf7cb5588b63ad051bf1ca"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.2/iq-darwin-x64"
      sha256 "c14d05e9251d8c730a762475ab3e196570a20cd3deefc349fd1ad33db07209bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.2/iq-linux-arm64"
      sha256 "5796e4c8f4f281ee58325008793ce3928eef05f750239227d1c84fd4e975f915"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.2.2/iq-linux-x64"
      sha256 "106aeb07e6734ad6ab8e3386a62795f8b7f2c652898dc7613b910b6d15266630"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
