cask "pi-ui" do
  version "0.2.2"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "329de2a4dcd389235c28b2a3e373b5b3c70adca680c772e67142d8c156377816"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "54a7895b82f87a8a0605080cf9d5a4e8678a808ddedef9eb5f909135716fe634"
  end

  app "pi-ui.app"
end
