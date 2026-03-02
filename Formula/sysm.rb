class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.9.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.9.0/sysm-1.9.0-macos-arm64.tar.gz"
  sha256 "f7cf526b426d0b19b5bb92d434dfd76c9aea33acc188fddd592ec74f6f01bace"
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
