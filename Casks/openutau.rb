cask "openutau" do
  version "0.1.576.2-alpha"
  sha256 "645562efc4a6f59b548a68014907d75cb07e2525b0f55e881fde2bfb536ccd7b"

  url "https://github.com/openutau/OpenUtau/releases/download/#{version}/OpenUtau-osx-arm64.dmg"
  name "OpenUtau"
  desc "Open-source singing voice synthesis platform with full support for UST"
  homepage "https://github.com/openutau/OpenUtau"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[-.]\w+)*)$/i)
    # OpenUtau's releases are all pre-releases, which :github_releases skips
    # by default, so match tags directly to keep the -alpha suffix
    strategy :github_releases do |json, regex|
      json.map { |release| release["tag_name"]&.[](regex, 1) }
    end
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "OpenUtau.app"

  zap trash: "~/Library/Application Support/OpenUtau"
end
