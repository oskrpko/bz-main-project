load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "bz-commons-values",
    remote = "https://github.com/oskrpko/bz-commons-values.git",
    branch = "master",
    verbose = True,
)

load("@bz-commons-values//:values.bzl", "MYVAR")

print("MYVAR is %s" % MYVAR)

