class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.6.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.6.0/sysm-1.6.0-macos-arm64.tar.gz"
  sha256 "7c7e366a2a3be97688abd245de15f75c1b8da6a3217c32c8222b5c0fdc2d5661"
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
