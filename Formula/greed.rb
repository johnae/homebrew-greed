class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.2.1/greed-0.2.1-macos-universal.tar.gz"
    sha256 "60a889b0fde49ebb791e278b6e251fdc26d2bbb7892d69078312295d090e0845"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.2.1/greed-0.2.1-linux-aarch64.tar.gz"
    sha256 "6cd087529db87db7b3f137dfe5e057035916c753f91757ad4485164cdee93678"
  else
    url "https://github.com/johnae/greed/releases/download/v0.2.1/greed-0.2.1-linux-x86_64.tar.gz"
    sha256 "eaea894c4773e5d0666c946c0f5af52504da73ecd1aa14deac83591cfb49d6e5"
  end

  def install
    bin.install "bin/greed"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
