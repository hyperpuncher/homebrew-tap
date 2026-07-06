cask "pi-ui" do
  version "0.1.1"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "c2812c25695336dba3215ea758faaf604a244a9fff90e862ed1fe3b01e2cd80d"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "c113ded997e62f106f204f6caffb4aa551535aab26ffd446ccd0585d4a6d3e2d"
  end

  app "pi-ui.app"
end
