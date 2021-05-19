FROM containerssh/agent AS agent

FROM alpine
COPY --from=agent /usr/bin/containerssh-agent /usr/bin/containerssh-agent

RUN apk --update --no-cache add openssh-sftp-server; \
    rm -rf /var/cache/apk/*;

CMD ["/bin/bash"]
SHELL ["/bin/bash"]
