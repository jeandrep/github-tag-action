FROM node:12-alpine3.15
LABEL "maintainer"="Jeandre Palm"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
