
other repos:
- https://github.com/kbdspam/cursor-party-addon
- https://github.com/kbdspam/cursor-party-rewrite
- https://github.com/kbdspam/c.ookie.click

packages:
```bash
sudo apt install ufw wget cron
# build-essential for debian because partykit node packages needed make...
```
- install [rustup](https://rustup.rs/)

other things to do on servers:
- cron to tell discord when rebooted
```bash
wget https://github.com/fieu/discord.sh/raw/master/discord.sh
chmod +x discord.sh
crontab -e
@reboot /home/debian/discord.sh --username "$HOSTNAME" --text "I rebooted..." --webhook-url=""
```
- setup swap if necessary...
- `ufw allow ssh; ufw allow http; ufw allow https`

how to deploy:
- `git clone https://github.com/kbdspam/cursor-party-rewrite.git`
- `cd cursor-party-rewrite`
- `cargo r -r`

other things
- install caddy https://caddyserver.com/docs/install#debian-ubuntu-raspbian
- `sudo cp ~/c.ookie.click-cursor-party/cursor-party-helper/Caddyfile /etc/caddy/Caddyfile   # then edit it...`
