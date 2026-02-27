class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.7.3"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.7.3/sysm-1.7.3-macos-arm64.tar.gz"
  sha256 "9df72dc501d47b87e7899e276e1c42b5ec64a0131f5836307789678f5d84e5c8"
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
