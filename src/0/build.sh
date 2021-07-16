#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# README.mdを生成する。
# CreatedAt: 2021-07-16
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	IsExistCmd() { type "$1" > /dev/null 2>&1; }
	InstallTera() { cargo install --git https://github.com/chevdor/tera-cli; }
	InstallKamidana() { pip3 install kamidana; pip3 install qtoml; }
	IsExistCmd kamidana || InstallKamidana
	
	rm -f README.md
	kamidana -d README.tpl.toml README.tpl.md > README.md
}
Run "$@"
