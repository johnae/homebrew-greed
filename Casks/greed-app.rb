cask "greed-app" do
  version "0.4.1"
  sha256 "ffea8597355886bffd0bd6cbf9061b05f03cf5cebd497e63969bd6c351eb6ce4"

  url "https://github.com/johnae/greed/releases/download/v0.4.1/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
