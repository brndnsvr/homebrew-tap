class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.7.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.7.1/sysm-1.7.1-macos-arm64.tar.gz"
  sha256 "980b3bb12f3301b4a074559f5764ea6f01b332e05594701d0592381c0dfcc5d8"
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
