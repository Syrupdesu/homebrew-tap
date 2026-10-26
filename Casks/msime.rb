cask "msime" do
  version "0.55.0"
  sha256 "ec02b0ac63fe8844d2cb0f435d09359298aabae70815ba71e77a910a7b1932af"

  url "https://github.com/metasequoiaime/msime/releases/download/macos-v#{version}/msime-macos-#{version}-universal.dmg"
  name "MSIME"
  name "水杉输入法"
  desc "Chinese input method for pinyin, shuangpin and wubi"
  homepage "https://msime.app/"

  livecheck do
    url "https://github.com/metasequoiaime/msime.git"
    regex(/^macos-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "MSIME.app"

  zap trash: [
    "~/Library/Application Support/app.msime.macos",
    "~/Library/Caches/app.msime.macos",
    "~/Library/Preferences/app.msime.macos.plist",
    "~/Library/WebKit/app.msime.macos",
  ]

  caveats <<~EOS
    Open MSIME once to finish installing: it adds 水杉输入法 to your input sources.
  EOS
end
