cask "kazumi" do
  version "2.0.4"
  sha256 :no_check

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "基于自定义规则的番剧采集APP"
  homepage "https://github.com/Predidit/Kazumi"

  app "Kazumi.app"
end
