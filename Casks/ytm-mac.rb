cask "ytm-mac" do
  arch arm: "arm64", intel: "universal"

  version "0.1.0"
  sha256 arm:   "1cf28a9f80f71e2197794e80099c6270f5bc9d7059f46800314faf06a961bac7",
         intel: "a8cdefc62f891341cc475170de3e73e69a5f2637b6af9dbc6de56b3df41d1654"

  url "https://github.com/DanielSinclair/ytm-mac/releases/download/v#{version}/ytm-mac-#{version}-#{arch}.zip"
  name "YouTube Music"
  desc "Minimal native wrapper for music.youtube.com"
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
