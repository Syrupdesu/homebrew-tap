cask "piliplus" do
  version "2.1.4,2.1.4,5348"
  sha256 "12a6a42930dac490bcafedd0aabeb0ec3b3ab4196d29b93d10e162ba2de2014f"

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
