cask "piliplus" do
  version "2.0.1.1"
  sha256 :no_check

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/#{version}/PiliPlus_macos_2.0.0+4721.dmg"
  name "PiliPlus"
  desc "Third-party bilibili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"
end
