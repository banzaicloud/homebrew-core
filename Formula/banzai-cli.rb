class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.18/banzai_0.0.18_darwin_amd64.tar.gz"
  version "0.0.18"
  sha256 "2e8855a1f9eaa12cd743259f57f86225f902459e9a1acccfd22e13ab48a9999d"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
