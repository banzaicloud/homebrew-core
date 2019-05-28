class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.15/banzai_0.0.15_darwin_amd64.tar.gz"
  version "0.0.15"
  sha256 "5cf280e2cc40e2a71288cd0178c124f55a5ddc2cae9afe794fb1908dfc4d2f5a"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
