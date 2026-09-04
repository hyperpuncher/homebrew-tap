class PiUi < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.40.1"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
      sha256 "f6cd79d1172e67f6e326a99e4b179e3bed4a7fecf39c13e2303da848219dd3da"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
      sha256 "79177d9777b3684a762b1ff292594dd8b545948e8d0de92ec8799ecf4ae1df78"
    end
  end

  def install
    bin.install "pi-ui"
  end

  service do
    run [opt_bin/"pi-ui"]
    keep_alive true
    log_path var/"log/pi-ui.log"
    error_log_path var/"log/pi-ui.log"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pi-ui --version").strip
  end
end
