cask "ytm-mac" do
  arch arm: "arm64", intel: "universal"

  version "0.1.0"
  sha256 arm:   "084d23faadfd159d96678f8e77ac0734d90615295f1a36b2fcc17e20b4c4a98a",
         intel: "2c46a91644d1eaf93f7ba3be3a0bc3085e2d42f35062253f644342c76a827189"

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
