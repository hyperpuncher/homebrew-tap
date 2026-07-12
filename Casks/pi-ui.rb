cask "pi-ui" do
  version "0.10.0"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "c7e6bb7a427c71d032d4541be410f0c57bf47ecaf3964e74c61a674669d2df57"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "ca7b948389c10d8f57afd5a5bc105fd9dec9f5851f41da61aec584f3a4d7614d"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
