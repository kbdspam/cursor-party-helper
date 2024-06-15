#!/bin/bash
cd "$(dirname "$0")"
rsync -trvz --delete \
	--exclude cursor-party-addon \
	--exclude='**/node_modules' \
	--exclude='**/.git' \
	.. debian@cursor-party-0:/home/debian/c.ookie.click-cursor-party
	#--dry-run \
