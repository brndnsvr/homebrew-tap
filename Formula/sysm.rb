class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.11.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.11.0/sysm-1.11.0-macos-arm64.tar.gz"
  sha256 "7314a334fd7e3b64654478063c8ff4ae1d4148bad6f189657dc384c125748f46"
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
