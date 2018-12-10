class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud products"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/banzai-cli/archive/0.0.2-preview.tar.gz"
  sha256 "f02103fcc5073c3019fd2732530f10ff13ff2e81e23cdc8dd8b70913e5acbfad"

  depends_on "dep" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    srcpath = buildpath/"src/github.com/banzaicloud/banzai-cli"
    srcpath.install buildpath.children

    cd srcpath do
      system "dep", "ensure", "-vendor-only"
      system "go", "build", "-o", bin/"banzai", "./cmd/banzai"
      prefix.install_metafiles
    end
  end

  test do
    system "false"
  end
end
