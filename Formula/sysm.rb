# typed: false
# frozen_string_literal: true

# Homebrew formula for sysm - unified CLI for Apple ecosystem on macOS
class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.13.3"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.13.3/sysm-1.13.3-macos-arm64.tar.gz"
  sha256 "a65ecf6e78399e0f6b4f0261f7440c9eb242280c7e36a9c0fbf5c264a4ea95a9"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  resource "claude-skill" do
    url "https://github.com/brndnsvr/sysm/releases/download/v1.13.3/sysm.skill"
    sha256 "1d672103aa88be95d7a1ac12d77d61425786ce7c0c927fd7f8fddb2f6e78ac5c"
  end

  def install
    bin.install "sysm"
    generate_completions_from_executable(bin/"sysm", "--generate-completion-script")
    resource("claude-skill").stage { (share/"sysm").install "sysm.skill" }
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sysm --version").strip
  end

  def caveats
    <<~EOS
      sysm requires macOS privacy permissions to function properly.

      Framework-based services (require explicit permission):
        • Calendars  - System Settings > Privacy & Security > Calendars
        • Reminders  - System Settings > Privacy & Security > Reminders
        • Contacts   - System Settings > Privacy & Security > Contacts
        • Photos     - System Settings > Privacy & Security > Photos

      AppleScript-based services (prompt on first use):
        • Mail, Notes, Messages, Music, Safari
        • System Settings > Privacy & Security > Automation

      Run this to check permissions:
        #{HOMEBREW_PREFIX}/bin/sysm focus status

      Claude Code skill:
        To give Claude Code knowledge of sysm commands, install the bundled skill:
          unzip -o #{share}/sysm/sysm.skill -d ~/.claude/skills/

      Documentation: https://github.com/brndnsvr/sysm
    EOS
  end
end
