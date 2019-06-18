class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.19/banzai_0.0.19_darwin_amd64.tar.gz"
  version "0.0.19"
  sha256 "11e4f1a967f0cb89309d5c16271cce104a5183794308726164e9d19ed8c50bbf"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
