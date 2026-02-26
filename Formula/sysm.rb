class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.7.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.7.1/sysm-1.7.1-macos-arm64.tar.gz"
  sha256 "865608b466d9490b04cb6e88b34e4de7905328b637886d4aa71ca77c2c0bf577"
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
