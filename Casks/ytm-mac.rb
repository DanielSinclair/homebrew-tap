cask "ytm-mac" do
  arch arm: "arm64", intel: "universal"

  version "0.1.0"
  sha256 arm:   "a52b989edf1f5da5c365dcbdd78d6a4ffcb0f5c80830afeed344640c328f1e0b",
         intel: "ff974831bd701d62186cc5e155a1cc5aa30184be09ef42556aaf929f8a641a39"

  url "https://github.com/DanielSinclair/ytm-mac/releases/download/v#{version}/ytm-mac-#{version}-#{arch}.zip"
  name "ytm-mac"
  desc "Minimal native music player shell"
  homepage "https://github.com/DanielSinclair/ytm-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "YouTube Music.app"

  zap trash: [
    "~/Library/Caches/me.danielsinclair.ytm-mac",
    "~/Library/HTTPStorages/me.danielsinclair.ytm-mac",
    "~/Library/Preferences/me.danielsinclair.ytm-mac.plist",
    "~/Library/Saved Application State/me.danielsinclair.ytm-mac.savedState",
    "~/Library/WebKit/me.danielsinclair.ytm-mac",
  ]
end
