cask "pi-ui" do
  version "0.1.0"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "35257499fe73582b5b3d1bac393d8f58ba26d758f6421256a879360183498f02"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "7b0b46cc7ea9c87211caa4e1071b8ae330d8ef21219ab7bbeaa510084a200215"
  end

  app "pi-ui.app"
end
