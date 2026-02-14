class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  url "https://github.com/brndnsvr/sysm/archive/v1.2.7.tar.gz"
  sha256 "1d0ff276017bbb893c25a16fd9d4c4fc7e78fbe5fcdf8a3392c250821c6cfbdf"
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
