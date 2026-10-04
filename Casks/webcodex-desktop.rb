cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "925f8cf15981d0df7da0d65d7c51097c9ebdb4e764ffe76a0fe66efdf4f1a7b3",
         intel: "9e4b2eded2247d932e8f02fe3fe2b28a3a0363718f633ec3826eb58c267d34ad"

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
