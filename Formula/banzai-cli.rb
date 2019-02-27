class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.6/banzai_0.0.6_darwin_amd64.tar.gz"
  version "0.0.6"
  sha256 "4803cba546e28e0e21b4e3577082de9720723c1490c53f9d29de947891528eef"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
