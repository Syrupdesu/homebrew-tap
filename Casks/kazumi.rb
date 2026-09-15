cask "kazumi" do
  version "2.3.3"
  sha256 "6f3fb8bf98afce2aec96d9c1b16a95b6308b5cd24057f2100c619ffc3540c3ad"

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
