cask "pi-ui" do
  version "0.9.2"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "3a0fd21ad28bff7437894b30f046bd0d4055e084e403a771a0624df401f7d48d"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "343b52808be6e55a73c2be68a5fd2db73ceaa6de4420fe015e370b9e8a24e469"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
