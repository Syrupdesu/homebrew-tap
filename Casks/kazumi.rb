cask "kazumi" do
  version "2.0.8"
  sha256 "78c906cac5b474cec6b4dbe10d528632b9e99fcc8c3541a3b20919c806df409b"

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
