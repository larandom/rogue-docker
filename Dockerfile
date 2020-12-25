FROM debian:stable-slim

ENV DEBIAN_RELEASE stable
ENV HOME /home/rogue
ENV PATH "/usr/games:${PATH}"

RUN set -eux; \
	useradd --create-home --home-dir "$HOME" rogue; \
	chown -R rogue:rogue "$HOME"; \ 
	echo "deb http://deb.debian.org/debian ${DEBIAN_RELEASE} non-free" >  \
	/etc/apt/sources.list.d/debian-non-free.list; \
	apt-get update; \
	apt-get -y upgrade; \
	apt-get install -y --no-install-recommends \
		bsdgames-nonfree; \
	rm -rf /var/lib/apt/lists/*

WORKDIR $HOME

USER rogue
ENTRYPOINT ["rogue"]
