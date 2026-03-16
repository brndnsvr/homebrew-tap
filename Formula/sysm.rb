class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.12.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.12.1/sysm-1.12.1-macos-arm64.tar.gz"
  sha256 "045d6253267654a41cc4f3f10f9efe4630263616017d791cbe58937f846afd94"
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
