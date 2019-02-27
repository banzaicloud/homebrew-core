class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.7/banzai_0.0.7_darwin_amd64.tar.gz"
  version "0.0.7"
  sha256 "5efcfc2b6738f235d8426b056a105989571e45b7818c11742c08ba464945700b"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
