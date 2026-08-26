class PiUiServer < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.37.0"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-arm64.zip"
      sha256 "af8452207febc38e6858459085780e5fe01f17e6883d891bdaba0a22f7fbede3"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-x64.zip"
      sha256 "fc69b5720279f028ed67ee3b3b04238adb06a85266b2dd8f050c02143b5968a0"
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
