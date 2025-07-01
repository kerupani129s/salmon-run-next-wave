#!/bin/bash
set -euoo pipefail posix
cd "$(dirname "$0")"

# 
cat docs/weapons/main/dps-list.md \
	| sed --sandbox -E '1 s/^# (.*)$/\1 簡易版/; 2,/##/ { /##/ ! d }; /##/,$ { /^\t*-/ ! d }' \
	| sed --sandbox -E '/バージョン [0-9.]+ 以降/ d' \
	| sed --sandbox -E '/DPS.*= / { /= [0-9.]+$/ ! d; s/DPS.*= // }' \
	| sed --sandbox -E '/^\t-/ { h; N; /\n\t\t-/ ! P; D }; /^\t\t-/ { G; s/^\t\t-(.*)\n(\t-.*)$/\2\1/ }' \
	| sed --sandbox -E 's/2 周未満チャージ (1 周チャージ)/\1/' \
	| sed --sandbox -E $'/^-/ i\n' \
	| sed --sandbox -E 's/^- /・/; s/^\t- //' \
	> docs/weapons/main/dps-list.txt

cat docs/weapons/main/damage-list.md \
	| sed --sandbox -E '1 s/^# (.*)$/\1 簡易版/; 2,/##/ { /##/ ! d }; /##/,$ { /^\t*-/ ! d }' \
	| sed --sandbox -E '/バージョン [0-9.]+ 以降/ d' \
	| sed --sandbox -E \
		-e '/射撃 ダメージ/ { /= [2-4] / s/ダメージ = //; s/ダメージ.*= // }' \
		-e '/合計ダメージ/ { /= [2-7] / s/ダメージ =//; s/ダメージ.*=// }' \
		-e '/最大ダメージ/ s/ダメージ.*=//' \
		-e '/ダメージ = [0-9]+ \+ [0-9]+ =/ s/ダメージ = //' \
		-e '/ダメージ = [0-9]+ × [0-9]+ =/ s/ダメージ = //' \
		-e 's/ダメージ < ([0-9]+)/\1 未満/' \
		-e 's/ダメージ.*= //' \
	| sed --sandbox -E '/^\t-/ { h; N; /\n\t\t-/ ! P; D }; /^\t\t-/ { G; s/^\t\t-(.*)\n(\t-.*)$/\2\1/ }' \
	| sed --sandbox -E $'/^-/ i\n' \
	| sed --sandbox -E 's/^- /・/; s/^\t- //' \
	> docs/weapons/main/damage-list.txt
