class PiUi < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.39.4"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
      sha256 "e8d92e09c7c6466fa628dd6c8050a40b67773a9a0eb838ad43311a69d1ab1187"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
      sha256 "2537ea0fcc488d067d1d3a31f329278f48b689cad92affeaa772c406018b2af6"
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
