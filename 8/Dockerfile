FROM bellsoft/liberica-openjdk-alpine:8

LABEL maintainer="应卓 yingzhor@gmail.com"

RUN addgroup --gid 1000 -S java && \
    adduser --uid 1000 --no-create-home -S java -G java && \
    addgroup java root && \
    addgroup java wheel && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add --no-cache bash fontconfig ttf-dejavu curl tzdata && \
    mkdir -p /opt/script/ && \
    mkdir -p /opt/log/ && \
    mkdir -p /opt/lib/ && \
    mkdir -p /opt/data/ && \
    mkdir -p /opt/etc/ && \
    mkdir -p /opt/secret/ && \
    mkdir -p /opt/tmp/ && \
    mkdir -p /opt/doc/ && \
    mkdir -p /opt/config-slot/00/ && \
    mkdir -p /opt/config-slot/01/ && \
    mkdir -p /opt/config-slot/02/ && \
    mkdir -p /opt/config-slot/03/ && \
    mkdir -p /opt/config-slot/04/ && \
    mkdir -p /opt/config-slot/05/ && \
    mkdir -p /opt/config-slot/06/ && \
    mkdir -p /opt/config-slot/07/ && \
    mkdir -p /opt/config-slot/08/ && \
    mkdir -p /opt/config-slot/09/ && \
    mkdir -p /opt/config-slot/10/ && \
    mkdir -p /opt/config-slot/11/ && \
    mkdir -p /opt/config-slot/12/ && \
    mkdir -p /opt/config-slot/13/ && \
    mkdir -p /opt/config-slot/14/ && \
    mkdir -p /opt/config-slot/15/ && \
    chown -R java:java /opt/

ENV PATH="$PATH:/opt/script"
ENV BUILDX_ARCH="${TARGETOS}-${TARGETARCH}"

ENTRYPOINT [ "java", "-version" ]

VOLUME /opt/