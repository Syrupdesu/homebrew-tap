cask "piliplus" do
  version "2.1.5,2.1.5,5410"
  sha256 "d3bb0ebef916eb3f92b687e5a4041f747f76ab0710125b4ec71ac0331c87280c"

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
