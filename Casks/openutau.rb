cask "openutau" do
  version "0.1.576"
  sha256 "38017f593a4438d2e003b04d86a3b06d32de71039b6a3405189bc5de395a7307"

  url "https://github.com/openutau/OpenUtau/releases/download/#{version}/OpenUtau-osx-arm64.dmg"
  name "OpenUtau"
  desc "Open-source singing voice synthesis platform with full support for UST"
  homepage "https://github.com/openutau/OpenUtau"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "OpenUtau.app"

  zap trash: "~/Library/Application Support/OpenUtau"
end
