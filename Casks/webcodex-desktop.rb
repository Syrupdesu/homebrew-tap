cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "6dd1a960ff522d8d56920aa9c0e9fc990dadceb30d60838524387d8ad2895beb",
         intel: "189553702b9710db376301aacdee64ccbafd5d6181fb37e178bbcf8366fbc8db"

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
