# KISS community repository

This repository is for packages maintained by the community.

## Index

<!-- vim-markdown-toc GFM -->

* [READ](#read)
* [Example package](#example-package)
* [Generating checksums](#generating-checksums)
* [Committing changes](#committing-changes)
* [Pull requests](#pull-requests)

<!-- vim-markdown-toc -->

## READ

- <https://k1ss.org/package-system>
- <https://k1ss.org/style>


## Example package

A simple package to use as a reference is `file`. It has dependencies and uses the GNU configure style (*which a lot of packages use*).

https://github.com/kisslinux/community/tree/master/community/file


## Generating checksums

Once you have packaged something (*and before the first build*) run `kiss checksum pkg` to generate checksums for the package.


## Committing changes

One package per commit unless the packages are very closely related (`linux` and `linux-headers`).

Commit rules:

* **New packages**: `<package>: new package at <version>`
* **Existing packages**: `<package>: update to <version>`, `<package>: bump to <version>` is also acceptable.
* **Other package changes**: `<package>: <changes>`
* **Merges**: GitHub's default format is acceptable, or just `Merge #<PR number>` should suffice.
* **Misc**: We leave that to the discretion of the author and/or committer.


## Pull requests

Ensure that the package builds successfully on your system before creating a pull request. If for some reason it **does not**, open an issue if assistance is needed.
