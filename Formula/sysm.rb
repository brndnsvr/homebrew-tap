class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.3.0/sysm-1.3.0-macos-arm64.tar.gz"
  sha256 "53f100fda93fd9e0ad7ede24f591a96b35857299b15bcf50d13a2cfd5f5f0af7"
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
