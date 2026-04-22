cask "kazumi" do
  version "2.0.7"
  sha256 "dc3a74922e425eecb454215357782dcc1921a4a0bdfdc9a8ba72eae9d38868e2"

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
