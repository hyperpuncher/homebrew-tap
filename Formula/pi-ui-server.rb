class PiUiServer < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.25.1"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-arm64.zip"
      sha256 "16a66dba4827c2bae548abe6ea6e44faad7bcd646fc5cfee52c99dfa02523d5d"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-x64.zip"
      sha256 "a054b662e6113f2b4c42b217ebaeb88ddb804e26f1765aa3f1ddaaf3d3d70d9f"
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
