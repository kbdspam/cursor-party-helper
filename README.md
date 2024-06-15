
other repos:
- https://github.com/kbdspam/cursor-party-addon
- https://github.com/kbdspam/cursor-party-server
- https://github.com/kbdspam/partykit

packages:
```bash
sudo apt install build-essential mosh ufw byobu vnstat curl wget htop lsof strace cron jq
# build-essential for debian because partykit node packages needed make...
```

other things to do on servers:
- cron to tell discord when rebooted
	```bash
	wget https://github.com/fieu/discord.sh/raw/master/discord.sh
	chmod +x discord.sh
	crontab -e
	@reboot /home/debian/discord.sh --username "$HOSTNAME" --text "I rebooted..." --webhook-url=""
	```
- setup swap if necessary...
- allow ssh mosh 80 443 in ufw
- https://nodejs.org/en/download/package-manager

how to deploy:
- run the `sync.sh` script...
- (you can do `wsl -e bash /mnt/f/code/c.ookie.click-cursor-party/cursor-party-helper/sync.sh`)

in `partykit`:
```bash
npm i
npm run build
```

in `cursor-party-server`
```bash
npm i
while true; do npx partykit dev ; done
```

other things
- install caddy https://caddyserver.com/docs/install#debian-ubuntu-raspbian
- `sudo cp ~/c.ookie.click-cursor-party/cursor-party-helper/Caddyfile /etc/caddy/Caddyfile`
