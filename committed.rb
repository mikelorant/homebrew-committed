# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Committed < Formula
  desc "WYSIWYG Git commit editor that helps improve the quality of your commits by showing you the layout in the same format as git log"
  homepage "https://github.com/mikelorant/committed"
  version "0.12.0"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mikelorant/committed/releases/download/v0.12.0/committed_0.12.0_darwin_amd64.tar.gz"
      sha256 "b59c611b96b649c6d81763fec6a11546faf0fc19ca30e6ad907e0c89266c58e3"

      def install
        bin.install "committed"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mikelorant/committed/releases/download/v0.12.0/committed_0.12.0_darwin_arm64.tar.gz"
      sha256 "79cd2e7b591da3f2916456188238857275d4783de462aff325a5df6b4e25b5e9"

      def install
        bin.install "committed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/mikelorant/committed/releases/download/v0.12.0/committed_0.12.0_linux_amd64.tar.gz"
      sha256 "339eec2dfd497fcc974262c0a5c6c6458d876135ec7691321d7b9cd6b53e59e8"
      def install
        bin.install "committed"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/mikelorant/committed/releases/download/v0.12.0/committed_0.12.0_linux_arm64.tar.gz"
      sha256 "ba536a0ee7bb1265d4508db2e753c197e9b3d1c9261f1ac24fe73826bbaa75cc"
      def install
        bin.install "committed"
      end
    end
  end

  test do
    system "#{bin}/committed --help"
  end
end
