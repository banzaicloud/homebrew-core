# This file was generated by GoReleaser. DO NOT EDIT.
class OneEye < Formula
  desc "Command-line interface for One Eye"
  homepage "https://banzaicloud.com/"
  version "0.4.5"
  bottle :unneeded

  if OS.mac?
    url "https://banzaicloud.com/downloads/one-eye/0.4.5/dist/one-eye_0.4.5_darwin_amd64.tar.gz"
    sha256 "cd1a237ee3aabcf6f1b1aac825be7a6f8bc9039cbd812d87259e6ec4d4fdbbf7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/one-eye/0.4.5/dist/one-eye_0.4.5_linux_amd64.tar.gz"
      sha256 "892b57f18a526b1ed8acf30ab92e9a7f49e88e9b753d00e9b3ba48ebe0ed0aa7"
    end
  end

  def install
    bin.install "one-eye"
  end

  test do
    system "#{bin}/one-eye --version"
  end
end
