# homebrew-tap

Shared [Homebrew](https://brew.sh) tap for [my](https://danielsinclair.me) projects.

## Usage

Add the tap once, then install anything from it:

```sh
brew tap danielsinclair/tap
brew install --cask openshokz
```

Or install directly without tapping first:

```sh
brew install --cask danielsinclair/tap/openshokz
```

## Casks

| Name | Description |
|------|-------------|
| [`openshokz`](Casks/openshokz.rb) | Download YouTube videos and podcasts to Shokz |
