# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ain < Formula
  desc "Ain is a terminal API client. It's an alternative to postman, paw or insomnia."
  homepage "https://github.com/jonaslu/ain"
  version "1.1.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jonaslu/ain/releases/download/v1.1.0/ain_1.1.0_mac_os_x86_64.tar.gz"
      sha256 "d1b8c8707a2cd25cc4c9d4fb9a21370b523f894c33aabdeafa545e3d0ae49c19"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jonaslu/ain/releases/download/v1.1.0/ain_1.1.0_mac_os_arm64.tar.gz"
      sha256 "42f85d3965cd2eee0cd4ee31ac464f1c57ee56dfbb34122c402ad7f3aadaf5b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jonaslu/ain/releases/download/v1.1.0/ain_1.1.0_linux_x86_64.tar.gz"
      sha256 "9889024badd192e734dc3542d28341deb41bc0c8f23e405b27a2eff0bb5af3cb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jonaslu/ain/releases/download/v1.1.0/ain_1.1.0_linux_arm64.tar.gz"
      sha256 "ecf41d3a62bd19372768af5d702ad9f9249514c749829c655a67add46a2e5e86"
    end
  end

  def install
    bin.install "ain"
  end
end
