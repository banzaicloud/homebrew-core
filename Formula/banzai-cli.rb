class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.13/banzai_0.0.13_darwin_amd64.tar.gz"
  version "0.0.13"
  sha256 "114f78fb41c7d4950b9ac67f8b51569e731f4e1da12cad5df7def9e75cc21d6d"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
