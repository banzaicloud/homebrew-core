class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.5/banzai_0.0.5_darwin_amd64.tar.gz"
  version "0.0.5"
  sha256 "d6c089aef53d6c158cc261023b8af8ffe731779a7743ada48df65a69cf9c423f"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
