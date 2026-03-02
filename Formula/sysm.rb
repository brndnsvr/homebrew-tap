class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.10.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.10.0/sysm-1.10.0-macos-arm64.tar.gz"
  sha256 "f6cec88dcd5afdaf8383c56ecc13b214f0a4dbd74b02d692708e28abdf85f3f3"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "sysm"
    generate_completions_from_executable(bin/"sysm", "--generate-completion-script")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sysm --version").strip
  end
end
