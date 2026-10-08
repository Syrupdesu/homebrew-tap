cask "kazumi" do
  version "2.3.8"
  sha256 "5d798a5934f90edd31987b30f1eec7741a91cf72b7ee5ce600aeda7a826f0ad0"

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
