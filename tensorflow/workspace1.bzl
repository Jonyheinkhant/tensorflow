"""TensorFlow workspace initialization. Consult the WORKSPACE on how to use it."""

load("//third_party/android:android_configure.bzl", "android_configure")
load("//third_party/toolchains/preconfig/generate:archives.bzl", "bazel_toolchains_archive")
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
load("@io_bazel_rules_closure//closure:defs.bzl", "closure_repositories")

def workspace():
    native.register_toolchains("@local_config_python//:py_toolchain")

    closure_repositories()
    bazel_toolchains_archive()

    android_configure(name = "local_config_android")

    grpc_deps()
