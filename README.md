# Homebrew Tap

Personal Homebrew tap for macOS tools and applications.

## Installation

```bash
brew tap brndnsvr/tap
```

Or install anything directly without tapping first, e.g.:

```bash
brew install --cask brndnsvr/tap/wzrdcheck
```

## Available Formulae

### sysm

Unified CLI for Apple ecosystem integration on macOS. Apple Silicon only. MIT licensed.

```bash
brew install sysm
```

[More info](https://github.com/brndnsvr/sysm)

### wzrd-vault

Local-first secrets manager that never leaks secrets to process arguments. Apple Silicon and Intel. MIT licensed.

```bash
brew install wzrd-vault
```

[More info](https://github.com/brndnsvr/wzrd-vault)

## Available Casks

### MailWzrd

Privacy-first AI email triage for Apple Mail with native MailKit and Ollama support. Requires macOS 15 (Sequoia) or later. Closed source; signed binaries are published via [MailWzrd-releases](https://github.com/brndnsvr/MailWzrd-releases).

```bash
brew install --cask mailwzrd
```

### WakeyWakey

Menu bar app that keeps your Mac awake with subtle mouse movements. Requires macOS 15 (Sequoia) or later. MIT licensed.

```bash
brew install --cask wakeywakey
```

[More info](https://github.com/brndnsvr/WakeyWakey)

### WzrdCheck

Menu bar host monitor with a patient, decaying ICMP probe ladder. Requires macOS 26 (Tahoe) or later. MIT licensed.

```bash
brew install --cask wzrdcheck
```

[More info](https://github.com/brndnsvr/WzrdCheck)

### VoxWzrd

Meeting assistant — record, transcribe, and summarize with on-device AI. Closed source; binaries are published via [VoxWzrd-releases](https://github.com/brndnsvr/VoxWzrd-releases).

```bash
brew install --cask voxwzrd
```

## Updating

```bash
brew update
brew upgrade            # formulae
brew upgrade --cask     # casks
```

## Uninstalling

```bash
brew uninstall --cask <name>          # remove the app
brew uninstall --cask --zap <name>    # also remove its settings and data
```

## Notes

- All apps are signed with a Developer ID certificate and notarized by Apple.
  On first launch, macOS shows the standard confirmation for apps downloaded
  from the internet.
- The MIT-licensed projects are developed in the linked repositories; issues
  and PRs are welcome there. Issues with the Homebrew packaging itself belong
  on this repo.
