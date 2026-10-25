cask "greed-app" do
  version "0.4.0"
  sha256 "c58bbd35b5fea0342f245cd6c02d2441ad75773165711f2a8096fdcd3363704e"

  url "https://github.com/johnae/greed/releases/download/v0.4.0/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
