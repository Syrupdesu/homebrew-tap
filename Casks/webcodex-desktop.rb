cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "b0e28f76de6ad0da594527da59134c971cfa420d35437ba55393739ccb31f048",
         intel: "2826ddf61e6a01c1eb13c3cd904887c719445884ecf21c140ed97488f388f988"

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
