class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.7.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.7.0/sysm-1.7.0-macos-arm64.tar.gz"
  sha256 "76f8a4360befe7cd4bf70faa1515ea8a7e3101139af964db3c58a78f0a172bf6"
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
