cask "kazumi" do
  version "2.3.6"
  sha256 "1b10f62a23123525bc8c4ea453cca01deaafb9ee7e19fd6ce8585be27c58b848"

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
