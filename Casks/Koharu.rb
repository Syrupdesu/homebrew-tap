cask "koharu" do
  version "0.44.2"
  sha256 "0e88daac0ff0a75a310db056fadc15076f6e8fe64857337ace83d3ecbfc50676"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg"
  name "Koharu"
  desc "ML-powered manga translator, written in Rust"
  homepage "https://koharu.rs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Koharu.app"

  zap trash: [
    "~/Library/Application Support/koharu",
    "~/Library/Caches/koharu",
    "~/Library/Logs/koharu",
    "~/Library/Preferences/com.mayocream.koharu.plist",
  ]
end