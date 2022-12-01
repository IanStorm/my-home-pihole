# ⬇️ Main stage
FROM pihole/pihole:2022.11.2

#	⬇️	Pi-hole recommended variables
#		👀 https://github.com/pi-hole/docker-pi-hole/#recommended-variables
ENV FTLCONF_LOCAL_IPV4="127.0.0.1"
ENV TZ="Europe/Berlin"
#	⬇️	Pi-hole recommended variables
#		👀 https://github.com/pi-hole/docker-pi-hole/#optional-variables
ENV DHCP_ACTIVE="false"
ENV TEMPERATUREUNIT=c
ENV WEBTHEME="default-auto"
#	⬇️	Pi-hole advanced variables
#		👀 https://github.com/pi-hole/docker-pi-hole/#advanced-variables
#			⬇️ https://github.com/pi-hole/docker-pi-hole#quick-start
ENV DNSMASQ_LISTENING=all
