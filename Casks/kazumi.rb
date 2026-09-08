cask "kazumi" do
  version "2.3.1"
  sha256 "3aeb009a024910e7c6bb4b0fb78fc10c020204376adfed9e136995a03f023755"

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
