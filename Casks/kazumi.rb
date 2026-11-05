cask "kazumi" do
  version "2.4.3"
  sha256 "8aad01a2e23f9b0feab481343e44238908c7f87bbac88dfcdcf5939c30038bba"

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
