cask "kazumi" do
  version "2.1.0"
  sha256 "6f2a03c42508838c8c372ae8336faa5b070f50152b92e76f5b15bb57e9fb5ff0"

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
