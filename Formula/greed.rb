class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.3.0/greed-0.3.0-macos-universal.tar.gz"
    sha256 "d1c4bccf0323bb8531a451204c73170a3822ddc4862746ebb6021caef5b6ed17"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.3.0/greed-0.3.0-linux-aarch64.tar.gz"
    sha256 "4496ea6161ade0336bfcbc802fdca90d3b86201984823bd59cf0f4e6832b222e"
  else
    url "https://github.com/johnae/greed/releases/download/v0.3.0/greed-0.3.0-linux-x86_64.tar.gz"
    sha256 "2e6b339fd46202a6758badd86a5a3fd336c97f40a1ff42a44eb8a8be32d8f62f"
  end

  def install
    bin.install "bin/greed", "bin/greed-mail"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
