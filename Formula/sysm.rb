class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.4.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.4.1/sysm-1.4.1-macos-arm64.tar.gz"
  sha256 "cbb9f427fdd312ea9dd83aea9488261ab3735a62b8bb27049481e9268bb64bc0"
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
