class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.7.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.7.1/sysm-1.7.1-macos-arm64.tar.gz"
  sha256 "aafbab7eae8486057b2c4256ee005cfc6daaa10851e38abd29c55486530264ff"
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
