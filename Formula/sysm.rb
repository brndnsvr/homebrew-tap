class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.6.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.6.1/sysm-1.6.1-macos-arm64.tar.gz"
  sha256 "e8d882a43fd9bb5a73a8c99df185adbd383e65748c5ce6b9cc93347ca058e6a6"
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
