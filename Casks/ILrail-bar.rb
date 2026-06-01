cask "ilrail-bar" do
  version "2.12.0"
  sha256 "606412fdded381f54fec130d927d0fba7323c1a0c3e1b4d9beca1b2929b08bb9"

  url "https://github.com/drehelis/ILrail-bar/releases/download/v#{version}/ILrail-bar.dmg",
      verified: "github.com/drehelis/ILrail-bar/"
  name "ILrail-bar"
  desc "A sleek and efficient macOS menu bar app for tracking Israel Railways train schedules in real-time"
  homepage "https://github.com/drehelis/ILrail-bar"

  app "ILrail-bar.app"

  zap trash: [
    "~/Library/Preferences/il.co.liar.ILrail-bar.plist"
  ]

  livecheck do
    url :url
    strategy :github_latest
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "/Applications/ILrail-bar.app"],
                   sudo: false
  end
end
