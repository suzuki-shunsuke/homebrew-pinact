# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pinact < Formula
  desc "Pin GitHub Actions versions"
  homepage "https://github.com/suzuki-shunsuke/pinact"
  version "3.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.1.2/pinact_darwin_amd64.tar.gz"
      sha256 "bcca1dc1f0fab2aa4fa0f17a0e4092c0f1661c802b6f5857bbe1f803d927d3b5"

      def install
        bin.install "pinact"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.1.2/pinact_darwin_arm64.tar.gz"
      sha256 "8dae815be50d0fb5832c27f9564bca2b91653b045ebd165c881ab95d8bf2df4c"

      def install
        bin.install "pinact"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.1.2/pinact_linux_amd64.tar.gz"
      sha256 "527800d3ea35aec5cff601cb014c01eb42c6098a269b05d8937025ec121f1b77"
      def install
        bin.install "pinact"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.1.2/pinact_linux_arm64.tar.gz"
      sha256 "73d5b05e54680a936acefabc5c98ca42c0bc282d83beb4ecd879904fd580acf9"
      def install
        bin.install "pinact"
      end
    end
  end

  test do
    system "#{bin}/pinact --version"
  end
end
