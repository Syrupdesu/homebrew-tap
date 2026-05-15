cask "piliplus" do
  version "2.0.7.2,2.0.7,4956"
  sha256 "256ab2a9ee3c0ecd064ee0ee3b15b71657652b06c48a8c0377c5abfed3953711"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/#{version.csv.first}/PiliPlus_macos_#{version.csv.second}+#{version.csv.third}.dmg"
  name "PiliPlus"
  desc "Third-party bilibili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  livecheck do
    url :url
    strategy :github_latest do |json|
      json["assets"]&.filter_map do |asset|
        url = asset["browser_download_url"]
        re = %r{/download/v?([^/]+)/PiliPlus_macos_v?([^/]+)(?:\+|%2B)(\d+)\.dmg}i
        match = url&.match(re)
        next if match.nil?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  app "PiliPlus.app"
end
