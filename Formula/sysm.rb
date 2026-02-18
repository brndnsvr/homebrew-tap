class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.4.2"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.4.2/sysm-1.4.2-macos-arm64.tar.gz"
  sha256 "feafbc6a28dd8d76d1ddf489908569ffd3d38a8046124dc21c8bb3b64fc0de63"
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
