class Iq < Formula
  desc "Interactive jq REPL"
  homepage "https://github.com/hyperpuncher/iq"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.1/iq-darwin-arm64"
      sha256 "7cdc4903dd38b6dd5756f5aee4911f8e8e2b32f4fabd710861ffc827a3db0657"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.1/iq-darwin-x64"
      sha256 "36de8fff9bc09fa27dd390d3944615fcf39179ab73420b7853f43fff14e171fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.1/iq-linux-arm64"
      sha256 "85a7e8ddc6420c0faa6c80ed6e429affe03134e49c98641fe4a93f34edfbfbe7"
    else
      url "https://github.com/hyperpuncher/iq/releases/download/v0.3.1/iq-linux-x64"
      sha256 "a4e18952379633ae4a1712f85910d939fd3c74ae457603fbd351df55b5a0f46f"
    end
  end

  def install
    bin.install Dir["iq-*"].first => "iq"
  end

  test do
    system "#{bin}/iq", "--version"
  end
end
