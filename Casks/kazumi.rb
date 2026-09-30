cask "kazumi" do
  version "2.3.7"
  sha256 "75cb20aaeae2c2ad6341765d5de083ff3b80ff3a8faf157b55ea41e183d18bd7"

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
