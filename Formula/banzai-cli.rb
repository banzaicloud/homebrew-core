class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.14/banzai_0.0.14_darwin_amd64.tar.gz"
  version "0.0.14"
  sha256 "0b90ffbb5e983b9c085ba860e402d368434ca3a494a3725bcf78d810af1a8eed"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
