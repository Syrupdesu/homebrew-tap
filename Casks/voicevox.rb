cask "voicevox" do
  version "0.25.1"

  on_arm do
    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-arm64-#{version}.zip"
    sha256 "REPLACE_WITH_ARM64_SHA256"
  end

  on_intel do
    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-x64-#{version}.zip"
    sha256 "REPLACE_WITH_X64_SHA256"
  end

  name "VOICEVOX"
  desc "A free Japanese text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox",
    "~/Library/Logs/voicevox",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
  ]
end
