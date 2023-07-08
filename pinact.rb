# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pinact < Formula
  desc "Pin GitHub Actions versions"
  homepage "https://github.com/suzuki-shunsuke/pinact"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v0.1.2/pinact_darwin_amd64.tar.gz"
      sha256 "8a6af33ec934061f7fe286ca15391858abeb1296d8ce18f41f02bd478691aebe"

      def install
        bin.install "pinact"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v0.1.2/pinact_darwin_arm64.tar.gz"
      sha256 "cb58838dbab7b6f32134fb1793243f1c487845304a58dbdd21b6e488aa8b43e6"

      def install
        bin.install "pinact"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v0.1.2/pinact_linux_amd64.tar.gz"
      sha256 "ff391582747b86581abc4fedcb6652ae9e1596ee7cbbd0e875eadf8098196d74"

      def install
        bin.install "pinact"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v0.1.2/pinact_linux_arm64.tar.gz"
      sha256 "3042cd88d1eb16a76e56263d6c8f49cc6b2cc4b720ed17345af1034f3cd8a721"

      def install
        bin.install "pinact"
      end
    end
  end

  test do
    system "#{bin}/pinact --version"
  end
end
