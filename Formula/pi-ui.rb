class PiUi < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.39.3"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
      sha256 "16038e5ea2257eec9e71c4694974e20ccebd025be21645a6333975482fe48b05"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
      sha256 "55b0bb5b3ee8cd3471a60fed9f1c86674ee3ed8c62cac499990275c6605fc6a8"
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
