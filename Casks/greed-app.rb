cask "greed-app" do
  version "0.2.1"
  sha256 "d07832341bd7cff09849cc6ed051e744af0ddab9f8108a6c6d481637f1957039"

  url "https://github.com/johnae/greed/releases/download/v0.2.1/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
