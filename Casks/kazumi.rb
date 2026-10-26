cask "kazumi" do
  version "2.4.2"
  sha256 "325b52d2f1b84a482c95dac1f1396daba9d106f2ae4eada19677b15c14cf39a7"

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
