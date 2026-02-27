class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.8.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.8.0/sysm-1.8.0-macos-arm64.tar.gz"
  sha256 "697240aa7f0172dddeb41f89d21da7ac740720e4f7defdfaf6ea77bd0bac67da"
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
