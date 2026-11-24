cask "kazumi" do
  version "2.4.5"
  sha256 "618d78ddc850be1bd2ca08856579df0a08bbd20a9709455161d5d8a2255b48ca"

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
