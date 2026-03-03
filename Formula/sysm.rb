class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.11.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.11.0/sysm-1.11.0-macos-arm64.tar.gz"
  sha256 "4141224cefe8c6a0de6258efc7da9b57b03a389ae6c373ca2fe64b10303a5469"
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
