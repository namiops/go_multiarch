FROM scratch

LABEL maintainer="NamiOps <namiops@gmail.com>"

ARG TARGETARCH

WORKDIR /app
COPY dist/go_multiarch_linux_$TARGETARCH/go_multiarch /

ENTRYPOINT ["/app/go_multiarch"]
