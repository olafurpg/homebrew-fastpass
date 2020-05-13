require 'formula'

class Fastpass < Formula
  desc "Metals 41"
  homepage ""
  version "41"
  url "https://github.com/olafurpg/homebrew-fastpass/releases/download/v41/fastpass.tar.gz"
  sha256 "7c90dee580a2ed466a843ec42de996f49873fd78139ee680e2c2e275af52d115"
  depends_on "scalacenter/bloop/bloop"
  def install
    bin.install "fastpass"
  end
end
