#!/bin/bash

# 👇 Wait for pihole application to be ready
while pihole status | grep -i -q 'not running'; do
	sleep 1s
done

echo "ℹ️ Adding IanStorm's custom allow- and blocklist entries..."

# 👇 YouTube app for Android
# 	👀 https://discourse.pi-hole.net/t/commonly-whitelisted-domains/212#youtube-history-3
pihole -w \
	s.youtube.com \
	video-stats.l.google.com

echo "✅ Added IanStorm's custom allow- and blocklist entries"
