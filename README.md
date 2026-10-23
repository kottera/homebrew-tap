# kottera/tap

The Homebrew tap of [METAIS](https://metais.org). It holds one formula,
`metais`, the reference tool for METAIS packages:

```bash
brew install kottera/tap/metais
```

## Conventions

- **The formula is generated, never edited by hand.** `Formula/metais.rb`
  is written from a release's `SHA256SUMS` by the release tooling of
  [`kottera/metais`](https://github.com/kottera/metais)
  (`go run ./internal/tools/release formula`), and pushed here by that
  repository's `release.yml` when the release is published. Each
  archive's URL and SHA-256 therefore come from the release itself. A fix
  to the formula is a fix to its generator, in `kottera/metais`.
- **Every commit is signed off** (`git commit -s`), certifying the
  [Developer Certificate of Origin](https://developercertificate.org).
- **No commit carries a `Co-authored-by` line.**
- **CI** (`.github/workflows/ci.yml`) runs `brew audit` and `brew test`
  on every formula, on each push and each pull request, on GitHub-hosted
  macOS and Linux runners, with a read-only token. A pull request may test
  a formula before its release exists by carrying its archives under
  `.github/test-archives/`; that directory never reaches `main`.

## Licence

[Apache-2.0](LICENSE).
