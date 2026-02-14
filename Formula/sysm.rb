class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  url "https://github.com/brndnsvr/sysm/archive/v1.0.0.tar.gz"
  sha256 "894705489801f1c2d8e7d25b89e980f76c6cb17f9af8dd50634457affca2c9cf"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
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
