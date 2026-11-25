class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.4.3/greed-0.4.3-macos-universal.tar.gz"
    sha256 "24a9fec459b64409bdf5958c19e8d462b780cba40a4bf344b0d3695f3befc1bb"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.4.3/greed-0.4.3-linux-aarch64.tar.gz"
    sha256 "be4d5e67dd6ed15afaf81a71010948cad3bd19927aa3d5801454600be005ecb5"
  else
    url "https://github.com/johnae/greed/releases/download/v0.4.3/greed-0.4.3-linux-x86_64.tar.gz"
    sha256 "e713a761e313c888e9dcb4577bc33089909ed332bc99a906c7ea47caae5e34d8"
  end

  def install
    bin.install "bin/greed", "bin/greed-mail", "bin/greed-matrix", "bin/greed-mattermost"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
