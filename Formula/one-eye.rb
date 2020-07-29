# This file was generated by GoReleaser. DO NOT EDIT.
class OneEye < Formula
  desc "Command-line interface for One Eye"
  homepage "https://banzaicloud.com/"
  version "0.3.1"

  if OS.mac?
    url "https://banzaicloud.com/downloads/one-eye/0.3.1/dist/one-eye_0.3.1_darwin_amd64.tar.gz"
    sha256 "8da5966da9bc7fad3cbb76797e957a60c478bf4b49ef7e61c7280dda451e7797"
  elsif OS.linux?
    url "https://banzaicloud.com/downloads/one-eye/0.3.1/dist/one-eye_0.3.1_linux_amd64.tar.gz"
    sha256 "f823442bf152539ba17408c0c7aba882e86906bf738da1133c4a175019f3ee38"
  end

  def install
    bin.install "one-eye"
  end

  test do
    system "#{bin}/one-eye --version"
  end
end
