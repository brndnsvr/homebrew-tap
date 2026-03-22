# typed: false
# frozen_string_literal: true

# Homebrew formula for wzrd-vault - local-first secrets manager
class WzrdVault < Formula
  desc "Local-first secrets manager. Never leaks secrets to process arguments."
  homepage "https://github.com/brndnsvr/wzrd-vault"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.0/wzrd-vault_0.2.0_darwin_arm64.tar.gz"
      sha256 "a346f0bfccff4405999a40c6629031c5bddb0c05ff34201c4a25ca04bd167563"
    elsif Hardware::CPU.intel?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.0/wzrd-vault_0.2.0_darwin_amd64.tar.gz"
      sha256 "afc4f794dbb10781a54189394daf5dc3ce5a08321102de9420d226e50f09ecca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.0/wzrd-vault_0.2.0_linux_arm64.tar.gz"
      sha256 "837e244c96f2e39df7f6cdd69402dd9e17909944e7a47f147d3aac7e5911b60d"
    elsif Hardware::CPU.intel?
      url "https://github.com/brndnsvr/wzrd-vault/releases/download/v0.2.0/wzrd-vault_0.2.0_linux_amd64.tar.gz"
      sha256 "e1468c07b531765d4255f903e8bae0e328da97f5783cc19ad390d584dd64d16a"
    end
  end

  def install
    bin.install "wzrd-vault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wzrd-vault version")
  end
end
