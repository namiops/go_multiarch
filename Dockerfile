FROM scratch
COPY go_multiarch /
ENTRYPOINT ["/go_multiarch"]
