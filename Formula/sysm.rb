class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.7.2"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.7.2/sysm-1.7.2-macos-arm64.tar.gz"
  sha256 "568ed03673bb5fa89a967507b1cecc479178a77752ddb704b607da0f1645eb7a"
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
