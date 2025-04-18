# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pinact < Formula
  desc "Pin GitHub Actions versions"
  homepage "https://github.com/suzuki-shunsuke/pinact"
  version "3.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.0.5/pinact_darwin_amd64.tar.gz"
      sha256 "7546bf811ad263af402549c3ae1c52156bce864d12ef369d03f0ce564625463c"

      def install
        bin.install "pinact"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.0.5/pinact_darwin_arm64.tar.gz"
      sha256 "460bbfe3cb7e56634e193ca9d321c98ccd99de1d7d433954b2e8b31a626f79b3"

      def install
        bin.install "pinact"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.0.5/pinact_linux_amd64.tar.gz"
        sha256 "fe009d86b9405bdc3daac7c53d07334c2014da6b2b4a3dd0fb837c4f2146b447"

        def install
          bin.install "pinact"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/pinact/releases/download/v3.0.5/pinact_linux_arm64.tar.gz"
        sha256 "be01a1d9c0d4311c88465d036246d65cdcaaed88888f3bce32849a850eb043f3"

        def install
          bin.install "pinact"
        end
      end
    end
  end

  test do
    system "#{bin}/pinact --version"
  end
end
