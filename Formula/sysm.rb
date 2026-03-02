class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.9.0"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.9.0/sysm-1.9.0-macos-arm64.tar.gz"
  sha256 "71562f888491619b3e49b7d69ba858a926a2a48f4279fb88da7e36c9aecfd87e"
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
