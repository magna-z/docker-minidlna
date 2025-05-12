FROM alpine:3.21

ENV MINIDLNA_VERSION=1.3.3 \
	MINIDLNA_ALPINE_BUILD=r1

RUN apk add --no-cache --no-progress minidlna==${MINIDLNA_VERSION}-${MINIDLNA_ALPINE_BUILD}

ENTRYPOINT ["minidlnad", "-d"]
