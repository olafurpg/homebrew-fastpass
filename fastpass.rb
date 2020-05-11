require 'formula'

class Fastpass < Formula
  desc "Metals 40"
  homepage ""
  version "40"
  url "https://github.com/olafurpg/homebrew-fastpass/releases/download/v40/fastpass.tar.gz"
  sha256 "26bfa440507e7f44fc0c8eb9c59c2d9faa8e4b44af7eba7b440fe4640c16b342"
  depends_on "scalacenter/bloop/bloop"
  def install
    bin.install "fastpass"
  end
end
