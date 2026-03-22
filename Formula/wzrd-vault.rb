# typed: false
# frozen_string_literal: true

# Homebrew formula for wzrd-vault - local-first secrets manager
class WzrdVault < Formula
  desc "Local-first secrets manager. Never leaks secrets to process arguments."
  homepage "https://github.com/brndnsvr/wzrd-vault"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.1/wzrd-vault_0.2.1_darwin_arm64.tar.gz"
      sha256 "0229c6b7c1af035fa38e1b3ce2cc5ff5e4d0a52e0b7b5049aece6c9e0895875b"
    elsif Hardware::CPU.intel?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.1/wzrd-vault_0.2.1_darwin_amd64.tar.gz"
      sha256 "464af21195768e9de2f8fa7699c367875427c0249cd003d59129494997bce23d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.1/wzrd-vault_0.2.1_linux_arm64.tar.gz"
      sha256 "0fa7d9093d89a23816ed51e4c3f72a696e4d9a76f9bd85eb6035b621598a91b3"
    elsif Hardware::CPU.intel?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.1/wzrd-vault_0.2.1_linux_amd64.tar.gz"
      sha256 "7ae9854e2f5acc1464b7299288cfcb322b53d539f0841d34274b3d5184b46c31"
    end
  end

  def install
    bin.install "wzrd-vault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wzrd-vault version")
  end
end
