cask "koharu" do
  version "0.38.1"
  sha256 :no_check

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg"
  name "Koharu"
  desc "ML-powered manga translator, written in Rust"
  homepage "https://github.com/mayocream/koharu"

  app "koharu.app"
end
