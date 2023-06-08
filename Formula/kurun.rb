# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/banzaicloud/kurun/releases/download/0.7.0/kurun-darwin-arm64.tar.gz"
      sha256 "504d673d83695cebf243817a374f61172a09b90abef06ad1013ec2f208c8782d"

      def install
        bin.install "kurun"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/kurun/releases/download/0.7.0/kurun-darwin-amd64.tar.gz"
      sha256 "17f6a039d504580e2f7d46d15908f6611ad07e3f187e15a7d041390156c5b4bd"

      def install
        bin.install "kurun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/banzaicloud/kurun/releases/download/0.7.0/kurun-linux-arm64.tar.gz"
      sha256 "850388b835a3ef1480f3facc18831944fa4e199a1f0c9b07ad62eb73d4fa8163"

      def install
        bin.install "kurun"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/kurun/releases/download/0.7.0/kurun-linux-amd64.tar.gz"
      sha256 "689ccf83dcf7f6f6517ad1363bb8a0daea1983e52ea60f2aa7bb3f41044546b0"

      def install
        bin.install "kurun"
      end
    end
  end

  test do
    system "#{bin}/kurun --version"
  end
end
