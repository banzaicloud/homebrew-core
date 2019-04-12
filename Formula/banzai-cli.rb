class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.12/banzai_0.0.12_darwin_amd64.tar.gz"
  version "0.0.12"
  sha256 "36671f8bf28265e8aebbdb01aa5f18a7352dadadebc6360c8b7b0ee59047c5a3"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
