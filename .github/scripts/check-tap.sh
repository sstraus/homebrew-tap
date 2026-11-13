#!/bin/sh
# Check that Homebrew can load every formula and cask of this checkout,
# and that they pass brew style. Usage: check-tap.sh [user/tap]
set -eu

tap="${1:-sstraus/tap}"
user="${tap%/*}"
name="${tap#*/}"
root="$(cd "$(dirname "$0")/../.." && pwd)"
taps="$(brew --repository)/Library/Taps/$user"

# Tap the working tree (uncommitted changes included), not a fresh clone.
mkdir -p "$taps"
ln -sfn "$root" "$taps/homebrew-$name"
# An untrusted tap is skipped and readall exits 0, so trust it first.
brew trust --tap "$tap"

brew readall --os=all --arch=all "$tap"
cd "$root"
brew style Formula Casks
