class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.16/banzai_0.0.16_darwin_amd64.tar.gz"
  version "0.0.16"
  sha256 "bea7f99749e0c76bb7d755eef13ab7e7938b9ccebac6b1757491b9dae2944b34"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
