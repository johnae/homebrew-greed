class Greed < Formula
  desc "Fast, extensible modal editor with agents as first-class clients"
  homepage "https://github.com/johnae/greed"
  license "MPL-2.0"

  if OS.mac?
    url "https://github.com/johnae/greed/releases/download/v0.2.0/greed-0.2.0-macos-universal.tar.gz"
    sha256 "f5f3b56a80dbae0f08ad0f81abe9e003604dd31c668c50e30867b18158ff9c2c"
  elsif Hardware::CPU.arm?
    url "https://github.com/johnae/greed/releases/download/v0.2.0/greed-0.2.0-linux-aarch64.tar.gz"
    sha256 "b84361ed8d726b774752ead71bba995656c6096c934b6deedb9744286f369d43"
  else
    url "https://github.com/johnae/greed/releases/download/v0.2.0/greed-0.2.0-linux-x86_64.tar.gz"
    sha256 "bacf012e85056df89385b75e630f20f168af0b9dd547860ae72ff9c705afd130"
  end

  def install
    bin.install "bin/greed"
    share.install Dir["share/*"] if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greed --version")
  end
end
