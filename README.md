# iOS example app with tachyon

## How to run

```sh
bazel run :xcodeproj
```

## Open xcodeproj

```sh
open iOSApp.xcodeproj
```

## Trouble shooting

Error: 
```sh
The current `lockfile` is out of date for 'crate_index'. Please re-run bazel using `CARGO_BAZEL_REPIN=true` if this is expected and the lockfile should be updated.
ERROR: Error computing the main repository mapping: no such package '@@crate_index//': Digests do not match: Digest("cfaadbe2b6a3d783ed0ad45264f3e830a43a08320c876d9b47df3dea9365b905") != Digest("d6e292fa6942c7c732745bcec95603d66a74a7ae841263f03224cce13dd1d834")
```

Execute

```sh
CARGO_BAZEL_REPIN=true bazel run :xcodeproj
```