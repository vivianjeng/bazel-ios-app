workspace(name = "ios_app_example")


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "b4df908ec14868369021182ab191dbd1f40830c9b300650d5dc389e0b9266c8d",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/3.5.1/rules_apple.3.5.1.tar.gz",
)


http_archive(
    name = "build_bazel_rules_ios",
    sha256 = "eccb4509a820204b80260bde9f5d6ec989d5dd12fdc96fc480bd39c7ff5596d6",
    url = "https://github.com/bazel-ios/rules_ios/releases/download/4.4.0/rules_ios.4.4.0.tar.gz",
)


# http_archive(
#     name = "kroma_network_rules_circom",
#     sha256 = "53f91f916b56e8f3070f1a594b625866afafe53057222a02796bee6f06dfc349",
#     strip_prefix = "rules_circom-977a8c486949d86bd4099a4e85deca56a9e47233",
#     urls = ["https://github.com/kroma-network/rules_circom/archive/977a8c486949d86bd4099a4e85deca56a9e47233.tar.gz"],
# )

# load("@kroma_network_rules_circom//:rules_circom_deps.bzl", "rules_circom_deps")

# rules_circom_deps()


# # Start of rules_rust
# load("@rules_rust//rust:repositories.bzl", "rules_rust_dependencies", "rust_register_toolchains")

# rules_rust_dependencies()

# rust_register_toolchains(
#     edition = "2021",
#     versions = [
#         "1.66.1",
#     ],
# )

# load("@rules_rust//crate_universe:repositories.bzl", "crate_universe_dependencies")

# crate_universe_dependencies()

# load("@rules_rust//crate_universe:defs.bzl", "crates_repository")

# crates_repository(
#     name = "crate_index",
#     cargo_lockfile = "@kroma_network_rules_circom//:Cargo.lock",
#     lockfile = "@kroma_network_rules_circom//:Cargo.Bazel.lock",
#     manifests = ["@kroma_network_rules_circom//:Cargo.toml"],
# )

# load("@crate_index//:defs.bzl", "crate_repositories")

# crate_repositories()
# # End of rules_rust

# local_repository(
#     name = "kroma_network_tachyon",
#     path = "third_party/tachyon",
# )

# load("@kroma_network_tachyon//bazel:tachyon_deps.bzl", "tachyon_deps")

# tachyon_deps()

# load("@kroma_network_tachyon//bazel:buildifier_deps.bzl", "buildifier_deps")

# buildifier_deps()

# local_repository(
#     name = "kroma_network_circom",
#     path = "third_party/tachyon/vendors/circom",
# )



# # Start of rules_js
# load("@kroma_network_tachyon//bazel:js_deps.bzl", "js_deps")

# js_deps()

# load("@aspect_rules_js//js:repositories.bzl", "rules_js_dependencies")

# rules_js_dependencies()

# load("@aspect_bazel_lib//lib:repositories.bzl", "aspect_bazel_lib_dependencies")

# aspect_bazel_lib_dependencies()

# # Fetch and register node, if you haven't already
# load("@rules_nodejs//nodejs:repositories.bzl", "DEFAULT_NODE_VERSION", "nodejs_register_toolchains")

# nodejs_register_toolchains(
#     name = "nodejs",
#     node_version = DEFAULT_NODE_VERSION,
# )

# load("@aspect_rules_js//npm:repositories.bzl", "npm_translate_lock")

# npm_translate_lock(
#     name = "npm",
#     data = ["@iden3_ffiasm//:package.json"],
#     npm_package_lock = "@iden3_ffiasm//:package-lock.json",
#     pnpm_lock = "@iden3_ffiasm//:pnpm-lock.yaml",
#     update_pnpm_lock = True,
#     verify_node_modules_ignored = "@iden3_ffiasm//:.bazelignore",
# )

# load("@npm//:repositories.bzl", "npm_repositories")

# npm_repositories()

# # End of rules_js


load(
    "@build_bazel_rules_ios//rules:repositories.bzl",
    "rules_ios_dependencies"
)


rules_ios_dependencies()

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

http_archive(
    name = "rules_xcodeproj",
    sha256 = "f5c1f4bea9f00732ef9d54d333d9819d574de7020dbd9d081074232b93c10b2c",
    url = "https://github.com/MobileNativeFoundation/rules_xcodeproj/releases/download/1.13.0/release.tar.gz",
)

load(
    "@rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()

load("@bazel_features//:deps.bzl", "bazel_features_deps")

bazel_features_deps()