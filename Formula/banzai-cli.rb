class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.11/banzai_0.0.11_darwin_amd64.tar.gz"
  version "0.0.11"
  sha256 "eaaf2d1e1f7727b4e4297d006692368f24f306359025cbc55f13b83d8c6fb5e5"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
