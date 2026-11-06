cask "greed-app" do
  version "0.4.2"
  sha256 "66ce2206fbba6c321879b912b1c84a420bbf573094b3ceb7df615de1ad3dd46a"

  url "https://github.com/johnae/greed/releases/download/v0.4.2/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
