cask "piliplus" do
  version "2.0.4,2.0.4,4848"
  sha256 "03fdbbf9e3630ae589e061a54e1e1ef9f5369a95cc93d7ee9b9c458d8ec20d5b"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/#{version.csv.first}/PiliPlus_macos_#{version.csv.second}+#{version.csv.third}.dmg"
  name "PiliPlus"
  desc "Third-party bilibili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  livecheck do
  url :url
  strategy :github_latest do |json|
    json["assets"]&.filter_map do |asset|
      match = asset["browser_download_url"]&.match(%r{/download/v?([^/]+)/PiliPlus_macos_v?([^/]+)(?:\+|%2B)(\d+)\.dmg}i)
      next if match.nil?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end
end

  app "PiliPlus.app"
end
