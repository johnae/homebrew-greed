cask "greed-app" do
  version "0.3.0"
  sha256 "dbb49b00cf645202fe68a22af341d61c8240edcc484d8f016869cef6676f9f56"

  url "https://github.com/johnae/greed/releases/download/v0.3.0/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
