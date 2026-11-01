cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "c891c76ee3a63685acd79aec828eb289c9d182c0ca3728fc664b31161484a0ac",
         intel: "746ca494cbbc2bdcefcf473e2cbaf0b1275c096f3d194bb69d1abe248a30212c"

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
