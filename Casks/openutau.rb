cask "openutau" do
  version "0.1.577.4-alpha"
  sha256 "7a005e0c659f510ca18a096120ca5609d6435fdea82d930e614c432a28f6f80d"

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
