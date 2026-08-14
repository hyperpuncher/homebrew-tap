class PiUiServer < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.27.0"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-arm64.zip"
      sha256 "f37a71c749157e3edc6a0730e2161f4528af1c33210da73dc8520111bd264f5c"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-x64.zip"
      sha256 "51f4737c1092ea804ed580219a0189b1c172ca4d20d295d5427670df2d871ff5"
    end
  end

  def install
    bin.install "pi-ui-server"
  end

  service do
    run [opt_bin/"pi-ui-server"]
    keep_alive true
    log_path var/"log/pi-ui-server.log"
    error_log_path var/"log/pi-ui-server.log"
  end

  test do
    assert_match "pi-ui-server", shell_output("#{bin}/pi-ui-server invalid 2>&1", 1)
  end
end
