# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCli < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.4.4"

  if OS.mac?
    url "https://banzaicloud.com/downloads/backyards-cli/1.4.4/dist/backyards_1.4.4_darwin_amd64.tar.gz"
    sha256 "93e3e816262987f74e8c640f3451ac4cd9abdf307ab2b9bc8fdc0c03183ca19f"
  elsif OS.linux?
    url "https://banzaicloud.com/downloads/backyards-cli/1.4.4/dist/backyards_1.4.4_linux_amd64.tar.gz"
    sha256 "bc23f8035893987c22a875ffa28bc4a5162f81cfc7848888eb5c680f71b55be7"
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
