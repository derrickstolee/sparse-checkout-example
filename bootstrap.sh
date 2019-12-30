#!/bin/bash

TEAM=$1

case $TEAM in
"android")
	FOLDERS="client/android"
	;;
"identity")
	FOLDERS="service/common service/identity"
	;;
"browser")
	FOLDERS="service web/browser"
	;;
*)
	die "please specify a valid team"
	;;
esac

echo "git sparse-checkout init --cone"
git sparse-checkout init --cone

echo "git sparse-checkout set $FOLDERS"
git sparse-checkout set $FOLDERS

