#!/bin/bash
cd "$(dirname "$0")"
cp ../cursor-party-rewrite/public/cursors2.js ../cursor-party-server/public
rsync -trvz --delete \
	--exclude cursor-party-addon \
	--exclude cursor-party-rewrite \
	--exclude='**/node_modules' \
	--exclude='**/.git' \
	.. debian@cursor-party-0:/home/debian/c.ookie.click-cursor-party
	#--dry-run \
