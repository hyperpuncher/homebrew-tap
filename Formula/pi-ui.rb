class PiUi < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.39.2"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
      sha256 "1863a1351a61d7d9f52718acdb74f7acb00efb98ad991735d396980b177f34d2"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
      sha256 "0f5c637331faa5faf64d174fcbdf73633d3ff4173301c2ba84d9e596ff68374d"
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
