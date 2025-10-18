cask "ILrail-bar" do
  version "2.10.0"
  sha256 "48d09cd484873229407fb2978ac730be1da054ca1b0cc77e15b1e86bc63dd2a3"

  url "https://github.com/drehelis/ILrail-bar/releases/download/v#{version}/ILrail-bar.dmg",
      verified: "github.com/drehelis/ILrail-bar/"
  name "ILrail-bar"
  desc "A sleek and efficient macOS menu bar app for tracking Israel Railways train schedules in real-time"
  homepage "https://github.com/drehelis/ILrail-bar"

  app "ILrail-bar.app"

  zap trash: [
    "~/Library/Preferences/il.co.liar.ILrail-bar.plist
  ]

  livecheck do
    url :url
    strategy :github_latest
  end
end
