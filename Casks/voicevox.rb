cask "voicevox" do
  version "0.26.1"
  sha256 "ed5f5eba92b6b2913e5c98cdc314823f40f9abfc8781f0d547a84c13353966f3"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-arm64-#{version}.zip"
  name "VOICEVOX"
  desc "Free Japanese text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.hiroshiba.voicevox.sfl*",
        "~/Library/Application Support/voicevox*",
        "~/Library/Logs/voicevox",
        "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
      ],
      rmdir: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments"
end
