class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.6.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.6.0/sysm-1.6.0-macos-arm64.tar.gz"
  sha256 "79ffec2000fb4e5040c92a88ab9bec310e40dbe3dbfd80b259bfae8199e4f0d4"
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
