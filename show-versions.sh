#!/bin/bash
set -euoo pipefail posix
cd "$(dirname "$0")"

# 
git grep -E -- '- バージョン [0-9.]+ の内容です。'

git diff -U0 | grep --color=auto -E '\+- バージョン [0-9.]+ の内容です。'
