class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.3.1/sysm-1.3.1-macos-arm64.tar.gz"
  sha256 "35ac329f36d4d760f8bb1abee3cf2bd3ee1d177bf5382b9adbe916e445e7e156"
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
