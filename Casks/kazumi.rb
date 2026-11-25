cask "kazumi" do
  version "2.4.6"
  sha256 "82cbbb27fcb2ec74830c189ecd8b8a0dcd7bcd6a8c6b9aa5d39bca782f9bef72"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "基于自定义规则的番剧采集APP"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Kazumi.app"
end
