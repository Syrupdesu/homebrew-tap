cask "piliplus" do
  version "2.1.6,2.1.6,5453"
  sha256 "db5f46836e71dbab03fb68c84710a0c6166ad9d0241188914813dc44252bba90"

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

  depends_on macos: :monterey

  app "PiliPlus.app"
end
