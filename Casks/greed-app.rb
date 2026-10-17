cask "greed-app" do
  version "0.2.0"
  sha256 "64c774ae716580fd1bee51f3750f6152bcecd303032eea310712e436ae5f9fac"

  url "https://github.com/johnae/greed/releases/download/v0.2.0/greed-#{version}-macos.zip"
  name "Greed"
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"

  depends_on macos: ">= :big_sur"

  app "Greed.app"
end
