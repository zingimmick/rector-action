FROM php:7.4-alpine

LABEL "com.github.actions.name"="Rector Action"
LABEL "com.github.actions.description"="Use Rector via GithubAction."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/zingimmick/rector-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="zingimmick<zingimmick@outlook.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
