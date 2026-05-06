cask "voicevox" do
  version "0.25.2"

  on_arm do
    sha256 "ce92131cbd3131b3ff641b003561146494377fc7922f2f7a6beb480dc54842e8"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-arm64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/"
  end
  on_intel do
    sha256 "6630831ab2a57fa9773448fdf433df3c3fefab81ab18d6f6103ddbefe15283eb"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-x64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/"
  end

  name "VOICEVOX"
  desc "Free Japanese text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.hiroshiba.voicevox.sfl*",
        "~/Library/Application Support/voicevox*",
        "~/Library/Logs/voicevox",
        "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
      ],
      rmdir: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments"
end
