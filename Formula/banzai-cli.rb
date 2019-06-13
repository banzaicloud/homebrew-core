class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.17/banzai_0.0.17_darwin_amd64.tar.gz"
  version "0.0.17"
  sha256 "51194906e0522ec21cce377c3848414238ecb494e479c38944bd7ee47342240d"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
