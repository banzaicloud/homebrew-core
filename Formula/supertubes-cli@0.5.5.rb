# This file was generated by GoReleaser. DO NOT EDIT.
class SupertubesCliAT055 < Formula
  desc "Command-line interface for Supertubes"
  homepage "https://banzaicloud.com/"
  version "0.5.5"

  if OS.mac?
    url "https://banzaicloud.com/downloads/supertubes-cli/0.5.5/dist/supertubes_0.5.5_darwin_amd64.tar.gz"
    sha256 "6b9cb2385cd299f20295e2366537b58f864a0218eeccfab5b7a269d1b819eec1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/supertubes-cli/0.5.5/dist/supertubes_0.5.5_linux_amd64.tar.gz"
      sha256 "5e34135461a115abdef22033dcf78a642f730aef2213c042fe02292d7e894c2c"
    end
  end

  def install
    bin.install "supertubes"
  end

  test do
    system "#{bin}/supertubes --version"
  end
end
