class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  url "https://github.com/brndnsvr/sysm/archive/v1.2.8.tar.gz"
  sha256 "b7a3e844b1734836f48764033106839d726cfac2a19b05ccee578e53df1a236a"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "./scripts/generate-version.sh"
    system "swift", "build",
           "--disable-sandbox",
           "-c", "release",
           "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/sysm"

    # Generate and install shell completions
    generate_completions_from_executable(bin/"sysm", "--generate-completion-script")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sysm --version").strip
  end
end
