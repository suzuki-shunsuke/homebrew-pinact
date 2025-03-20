# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pinact < Formula
  desc "Pin GitHub Actions versions"
  homepage "https://github.com/suzuki-shunsuke/pinact"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v2.0.0/pinact_darwin_amd64.tar.gz"
      sha256 "6aa536c8f349a32f57173d6a8b8ff8d81c62042fb660cc3950359da5a92cc4cf"

      def install
        bin.install "pinact"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/pinact/releases/download/v2.0.0/pinact_darwin_arm64.tar.gz"
      sha256 "1979a43cf62ecd6b7ecb83f017a7c451f5460cd6fb23b76797708d4838b8a30a"

      def install
        bin.install "pinact"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/pinact/releases/download/v2.0.0/pinact_linux_amd64.tar.gz"
        sha256 "cacd1e1e55093bb6c91ed7f4a0863928379ac3e82c661e5152f7c4c6ecb67f78"

        def install
          bin.install "pinact"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/pinact/releases/download/v2.0.0/pinact_linux_arm64.tar.gz"
        sha256 "648f36f05b4c7aaf3dba2dc1a40437dedd2a70d53079b74ab498a34812b49464"

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
