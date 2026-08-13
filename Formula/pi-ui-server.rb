class PiUiServer < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.26.1"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-arm64.zip"
      sha256 "a690c9122cc8f9d7530db03f72ced08a5206c451fe017a595e219cde2777b241"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-server-darwin-x64.zip"
      sha256 "0efc203fcaed7146897b8e40ed591bfbd5e128d393999c0cbe4ffa0af214c06a"
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
