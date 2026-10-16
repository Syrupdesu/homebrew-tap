cask "kazumi" do
  version "2.3.9"
  sha256 "4b1f0c86fd23b5ee884d53864aaac78f97b3117fabb942ff18d351df8d0ca290"

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
