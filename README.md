# homebrew-tap

Shared [Homebrew](https://brew.sh) tap for [my](https://danielsinclair.me) projects.

## Usage

Add and trust the tap once (Homebrew 7+ refuses third-party taps until you trust them), then install anything from it:

```sh
brew tap danielsinclair/tap
brew trust danielsinclair/tap
brew install --cask ytm-mac
```

Or trust and install a single cask directly:

```sh
brew trust --cask danielsinclair/tap/ytm-mac
brew install --cask danielsinclair/tap/ytm-mac
```

## Casks

| Name | Description |
|------|-------------|
| [`openshokz`](Casks/openshokz.rb) | Download YouTube videos and podcasts to Shokz |
| [`ytm-mac`](Casks/ytm-mac.rb) | Minimal native music player shell for macOS |
