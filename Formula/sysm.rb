class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.12.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.12.0/sysm-1.12.0-macos-arm64.tar.gz"
  sha256 "85b48a0b3a352fa0f39ed63385222c3ee3be02e25652a5c4d49309ff9a342096"
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
