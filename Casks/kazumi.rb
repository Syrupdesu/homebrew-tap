cask "kazumi" do
  version "2.1.2"
  sha256 "2be6a41ef0cf84999e8699fcaeeaef5d5ef755c82fe8c37a0cadc7dbf23c3296"

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
