cask "greed-app" do
  version "0.1.8"
  sha256 "d187ac15d91e01a812f9e86838357186932d1b7fdd9a661910243ea0492cf93c"

  url "https://github.com/johnae/greed/releases/download/v0.1.8/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
