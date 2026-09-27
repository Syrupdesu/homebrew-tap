cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "e0c127e97d4ae9b3c0db844a1b0092558fe0f98b045204cde582a0860a1f828b",
         intel: "d93d6dbcf3a998c1ed061a7d289f8125d7418a5c0cb867c47e24fd9214a918f4"

  url "https://github.com/yyjeqhc/webcodex/releases/download/v#{version}/webcodex-desktop-v#{version}-darwin-#{arch}.dmg"
  name "WebCodex Desktop"
  desc "Desktop app that lets AI coding agents work with code on your local machine"
  homepage "https://github.com/yyjeqhc/webcodex"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "WebCodex Desktop.app"

  zap trash: [
    "~/Library/Application Support/dev.webcodex.desktop",
    "~/Library/Caches/dev.webcodex.desktop",
    "~/Library/Preferences/dev.webcodex.desktop.plist",
    "~/Library/WebKit/dev.webcodex.desktop",
  ]
end
