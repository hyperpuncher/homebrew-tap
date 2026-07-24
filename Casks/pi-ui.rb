cask "pi-ui" do
  version "0.19.0"
  name "pi-ui"
  desc "Minimal GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "c3df76e3865f73d5c73af8de48abdb73244ba2299e3e8b56a7c432e8a02047e0"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "6c3af004bf506c7d9107c81622cc4893f3cdf4ad2d803c9ce81076329615add8"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
