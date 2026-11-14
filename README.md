# BnS2 Homebrew tap

```sh
brew install --cask bns2/tap/revelation
```

[Revelation](https://github.com/BnS2/revelation-presenter) shows songs, Bible
passages and slides for church services, with a preview the congregation never
sees. Apple Silicon, macOS 13 or later.

Revelation is not signed with an Apple Developer ID. The first time you open it,
macOS says it can't verify the developer: click **Done**, then go to
**System Settings > Privacy & Security** and click **Open Anyway** next to
Revelation.

Revelation updates itself, so `brew upgrade` leaves it alone unless you add
`--greedy`. The cask is updated with each release.
