FROM alpine:3.17

ENV MINIDLNA_VERSION=1.3.2 \
	MINIDLNA_ALPINE_BUILD=r0

RUN apk add --no-cache --no-progress minidlna==${MINIDLNA_VERSION}-${MINIDLNA_ALPINE_BUILD}

ENTRYPOINT ["minidlnad", "-d"]
