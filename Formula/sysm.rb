class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.4.0/sysm-1.4.0-macos-arm64.tar.gz"
  sha256 "ee6e0213276408418db20ab8cc46f3a663196bca6ae771ac88e28f7a5189175a"
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
