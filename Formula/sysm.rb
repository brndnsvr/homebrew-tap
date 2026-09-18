# typed: false
# frozen_string_literal: true

# Homebrew formula for sysm - unified CLI for Apple ecosystem on macOS
class Sysm < Formula
  desc "Unified CLI for Apple ecosystem integration on macOS"
  homepage "https://github.com/brndnsvr/sysm"
  version "1.26.4.1"
  url "https://github.com/brndnsvr/sysm/releases/download/v1.26.4.1/sysm-1.26.4.1-macos-arm64.tar.gz"
  sha256 "fe9dbe93b5ae8a69fd56b9a44b540ad9284dea1b11af5317e07acaf370122b1e"
  license "MIT"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  resource "claude-skill" do
    url "https://github.com/brndnsvr/sysm/releases/download/v1.26.4.1/sysm.skill"
    sha256 "9c16fe876d6725b0433377822a2a3a028154dd3e8dd05d793364500419db4099"
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
