class PiUiServer < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.37.1"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-arm64.zip"
      sha256 "6082d07a6f304b46a3a01e12db19188987e58d4f5807b82b5eb955fd28a1f6da"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-x64.zip"
      sha256 "fd45198237f9c0d78f5d8ec8d6ba47d63e44be46e7b57f37ec5bfc0fc8f54aae"
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
