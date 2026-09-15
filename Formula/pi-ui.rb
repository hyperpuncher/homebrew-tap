class PiUi < Formula
  desc "Use pi-ui in your browser"
  homepage "https://github.com/hyperpuncher/pi-ui"
  version "0.47.1"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
      sha256 "a470c58a86fabe9c9cb52d049694807754755062825451d5d1e514a0b9455de9"
    end
    on_intel do
      url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
      sha256 "e0836d5c5be5400d9ec80f79ba2168f2f7b7927785d4ac1b0e889123af295be8"
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
