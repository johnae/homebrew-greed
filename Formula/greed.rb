class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.1.8/greed-0.1.8-macos-universal.tar.gz"
    sha256 "1da5565d6a0ea37be04cea78a2ab5a8ce454afdd867089dbb8bf82215526aaed"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.1.8/greed-0.1.8-linux-aarch64.tar.gz"
    sha256 "dc229de511b98d25a8dff6c2f5a19544f288092083f5614cdad8a1c5b5405526"
  else
    url "https://github.com/johnae/greed/releases/download/v0.1.8/greed-0.1.8-linux-x86_64.tar.gz"
    sha256 "258f6faebd648e982240a0286776114df9abb1ac13c349ccb8743d81b0ec20d4"
  end

  def install
    bin.install "bin/greed"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
