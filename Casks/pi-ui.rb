cask "pi-ui" do
  version "0.2.1"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "436239889b065b9c60ddf6abb21ba3e682286ca2a44a8d9e48ab943e108e5056"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "b658cedac143dfac683bd998217fd315e0d2fc0e8cfdc45e4a81af91773a5ab5"
  end

  app "pi-ui.app"
end
