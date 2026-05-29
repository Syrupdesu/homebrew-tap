cask "kazumi" do
  version "2.1.3"
  sha256 "5fe092af414049c7e82a7f84fa6a2c1370cecb47601cc9559fd85b24c7fe7e6a"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "基于自定义规则的番剧采集APP"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Kazumi.app"
end
