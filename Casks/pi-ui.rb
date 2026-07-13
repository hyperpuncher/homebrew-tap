cask "pi-ui" do
  version "0.10.3"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "6752712b2d2d1e422ccdea2bf58c3604723a2a51962b595b461f52a09201dd6a"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "d37dfb6c6effaff3e8adff69faa64ae4d7185bf8b40757b3c52d905ce5def861"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
