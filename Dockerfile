# ⬇️ Main stage
FROM pihole/pihole:2025.06.2


#	⬇️	Pi-hole recommended variables
#		👀 https://github.com/pi-hole/docker-pi-hole/#recommended-variables
ENV FTLCONF_dns_dnssec=true
#			⬇️ CloudFlare DNS
ENV FTLCONF_dns_upstreams=1.1.1.1;1.0.0.1
ENV TZ="Europe/Berlin"

#	⬇️	Pi-hole optional variables
#		👀 https://github.com/pi-hole/docker-pi-hole/#optional-variables
ENV FTLCONF_dhcp_active=false
ENV FTLCONF_dns_listeningMode="ALL"
ENV FTLCONF_webserver_api_temp_unit="C"
ENV FTLCONF_webserver_interface_theme="default-auto"

#	⬇️	Pi-hole advanced variables
#		👀 https://github.com/pi-hole/docker-pi-hole/#advanced-variables
#			⬇️ https://github.com/pi-hole/docker-pi-hole#quick-start
# none


COPY ./alpine-root/crontab.* /
RUN cat /crontab.part2.txt >> /crontab.txt \
	&& rm /crontab.part2.txt

COPY --chmod=755 ./alpine-root/root/ /root/
COPY --chmod=755 ./alpine-root/usr/  /usr/
