class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.4.2"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.4.2/sysm-1.4.2-macos-arm64.tar.gz"
  sha256 "8b81c87f132fac9353a85529ad2abbac68336722aaaa882d798e2384a6d7ba96"
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
