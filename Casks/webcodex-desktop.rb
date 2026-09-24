cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "a1f181caa39167e3235d9209614b9bc5029563eb337733118cf0267069fe50a5",
         intel: "b430cbd180900e895c7443414f8a68b537fb3b68463c1f27949a37e030a2c141"

  url "https://github.com/yyjeqhc/webcodex/releases/download/v#{version}/webcodex-desktop-v#{version}-darwin-#{arch}.dmg"
  name "WebCodex Desktop"
  desc "Desktop app that lets AI coding agents work with code on your local machine"
  homepage "https://github.com/yyjeqhc/webcodex"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :high_sierra

  app "WebCodex Desktop.app"

  zap trash: [
    "~/Library/Application Support/WebCodex Desktop",
    "~/Library/Preferences/dev.webcodex.desktop.plist",
    "~/Library/Saved Application State/dev.webcodex.desktop.savedState",
    "~/Library/Logs/WebCodex Desktop",
  ]
end
