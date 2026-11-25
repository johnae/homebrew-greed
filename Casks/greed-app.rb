cask "greed-app" do
  version "0.4.3"
  sha256 "951f56cee10d389a22f310d68962b7c4cf2015518d46997da6e62fe6e52fe66b"

  url "https://github.com/johnae/greed/releases/download/v0.4.3/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
