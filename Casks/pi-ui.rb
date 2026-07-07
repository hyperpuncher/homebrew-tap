cask "pi-ui" do
  version "0.2.0"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "07ca8f4ceceb29df2152a50b70770f08752c08fc52d85a49a0f1edf797f52c6f"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "8e69237478cee98dd96fd0df20530c2dd89f19e5bcc4e71cd6b419cfca03ad75"
  end

  app "pi-ui.app"
end
