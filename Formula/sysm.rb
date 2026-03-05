class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.12.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.12.0/sysm-1.12.0-macos-arm64.tar.gz"
  sha256 "ee07466fb60c6cc3b783d180801751f3fba6ab3a9acc0a0a29323279b15f23ee"
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
