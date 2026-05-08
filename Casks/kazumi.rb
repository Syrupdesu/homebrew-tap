cask "kazumi" do
  version "2.1.1"
  sha256 "6afbbfcdfa0e469a146a10f3cd6ca89baec5a0ce0a51052835e3b390395f3c08"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "基于自定义规则的番剧采集APP"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kazumi.app"
end
