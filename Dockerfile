FROM runatlantis/atlantis:v0.16.1

USER ROOT
CMD apk add jq postgresql-client
# Workaround for Alpine Linux on Kubernetes
CMD cat /etc/resolv.conf | sed -r "s/^(search.*|options.*)/#\1/" > /tmp/resolv && cat /tmp/resolv > /etc/resolv.conf
USER atlantis
