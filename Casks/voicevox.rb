cask "voicevox" do
  version "0.26.3"
  sha256 "21bbabdaf50b226e0f450ae85543589125a05ad21e566552221f1010d0e61cc1"

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
