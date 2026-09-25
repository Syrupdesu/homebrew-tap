cask "webcodex-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "9670c791f5012434347d7bc713b3c8c97c8c86e7314743efe4ff17cafd39831c",
         intel: "d4440c95b58715cf126d93920e619797e99b907ab28a0b5757862072522ef16a"

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
