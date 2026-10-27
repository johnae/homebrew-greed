class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.4.1/greed-0.4.1-macos-universal.tar.gz"
    sha256 "c7448be6c6c4b07d89237c38a59d98f2c1ab7557c4136f7669ab675dc429ae87"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.4.1/greed-0.4.1-linux-aarch64.tar.gz"
    sha256 "b3d9cae4114cc2c67254fcbe748962a73926be8b8fab6e3f511bac4b7c5efe42"
  else
    url "https://github.com/johnae/greed/releases/download/v0.4.1/greed-0.4.1-linux-x86_64.tar.gz"
    sha256 "19d521f83f804cdc02cf4a70d5aed5c401d442017769e22d5083dee01e659752"
  end

  def install
    bin.install "bin/greed", "bin/greed-mail", "bin/greed-matrix", "bin/greed-mattermost"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
