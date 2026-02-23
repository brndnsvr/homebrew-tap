class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.6.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.6.1/sysm-1.6.1-macos-arm64.tar.gz"
  sha256 "94ba2b935ac7024f49a74d16f84d5bf0f7467f9abe968dcc0db7e288c8a7097e"
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
