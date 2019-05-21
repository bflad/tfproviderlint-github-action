FROM bflad/tfproviderlint:latest

LABEL "com.github.actions.name"="tfproviderlint"
LABEL "com.github.actions.description"="Run tfproviderlint"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/bflad/tfproviderlint-github-action"
LABEL "homepage"="http://github.com/bflad/tfproviderlint-github-action"
LABEL "maintainer"="Brian Flad <bflad417@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
