# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Committed < Formula
  desc "WYSIWYG Git commit editor that helps improve the quality of your commits by showing you the layout in the same format as git log"
  homepage "https://github.com/mikelorant/committed"
  version "0.9.2"
  license "MIT"

  depends_on "git"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mikelorant/committed/releases/download/v0.9.2/committed_0.9.2_darwin_arm64.tar.gz"
      sha256 "ef5cea637781a037f25e2099349175043b13e9fb732d389968d46c63405b791e"

      def install
        bin.install "committed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mikelorant/committed/releases/download/v0.9.2/committed_0.9.2_darwin_amd64.tar.gz"
      sha256 "b779a056862a3b6d6aa014c835f1f7306f10a6192c1117428b3c89c14296fd98"

      def install
        bin.install "committed"
      end
    end
  end

  test do
    system "#{bin}/committed --help"
  end
end
