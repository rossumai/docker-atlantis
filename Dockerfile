FROM runatlantis/atlantis:v0.16.1

USER ROOT
CMD apk add jq postgresql-client
USER atlantis
