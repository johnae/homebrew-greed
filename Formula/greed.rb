class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.4.0/greed-0.4.0-macos-universal.tar.gz"
    sha256 "ead76a62fcead67e39c6889cbb3e67f772d1da80927cc937f5e813829565fb5a"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.4.0/greed-0.4.0-linux-aarch64.tar.gz"
    sha256 "0a2c0e26b5a9d3dc8808b52999b1858949945f2e1d01349e91927fb101dcb853"
  else
    url "https://github.com/johnae/greed/releases/download/v0.4.0/greed-0.4.0-linux-x86_64.tar.gz"
    sha256 "55e4dd7c11e2763b9b8bb7d09c6116f6da7bb10afc180d30253bc405d1202f97"
  end

  def install
    bin.install "bin/greed", "bin/greed-mail", "bin/greed-matrix", "bin/greed-mattermost"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
