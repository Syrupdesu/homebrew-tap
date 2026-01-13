cask "kazumi" do
  version "1.9.4"
  sha256 "65e74fbf144a6363685ec6a7510c584182f31ae23c07a1f2352a36e826a29bc2"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "A custom-rule-based anime scraping and online viewing application, built with Flutter."
  homepage "https://kazumi.app/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kazumi.app"
end
