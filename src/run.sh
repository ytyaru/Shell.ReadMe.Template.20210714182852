#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# READMEのテンプレートを作る。
# CreatedAt: 2021-07-14
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
}
Run "$@"
