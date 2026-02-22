class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.5.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.5.0/sysm-1.5.0-macos-arm64.tar.gz"
  sha256 "74fd8cc3887d5eae3e011b73dd89586b58db70528d183bcccfd80434d11fae2c"
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
