class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.4.2/greed-0.4.2-macos-universal.tar.gz"
    sha256 "fa30de1deb8aac510e30e549de37b7a8b68d18da2cc4dded0f9491971db7d625"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.4.2/greed-0.4.2-linux-aarch64.tar.gz"
    sha256 "fc70bbc607c3c4918941b15160ef4379932d4ebaac87054dec1d0bfcc376005a"
  else
    url "https://github.com/johnae/greed/releases/download/v0.4.2/greed-0.4.2-linux-x86_64.tar.gz"
    sha256 "aad7c022c976226fa38bd420e4d208e8e61bdc2af35f272240cf67276eced0c6"
  end

  def install
    bin.install "bin/greed", "bin/greed-mail", "bin/greed-matrix", "bin/greed-mattermost"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
