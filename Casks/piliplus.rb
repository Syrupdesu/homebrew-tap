cask "piliplus" do
  version "2.0.3,2.0.3,4833"
  sha256 :no_check

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/#{version.csv.first}/PiliPlus_macos_#{version.csv.second}+#{version.csv.third}.dmg"
  name "PiliPlus"
  desc "Third-party bilibili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  livecheck do
    url :url
    strategy :github_latest do |json|
      json["assets"]&.filter_map do |asset|
        match = asset["browser_download_url"]&.match(%r{/download/v?([^/]+)/PiliPlus_macos_v?([^/]+)\+(\d+)\.dmg}i)
        next if match.nil?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  app "PiliPlus.app"
end
