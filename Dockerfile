FROM rocker/tidyverse:3.5.1

ENV npm_version=6.4.1
RUN set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    curl \
    gnupg \
    hugo \
    zlib1g-dev \
    xclip && \
  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && \
  apt-get install -y --no-install-recommends \
    nodejs \
    npm && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  npm install npm@${npm_version} -g && \
  rm -rf /tmp/npm-* && \
  install2.r --error \
    blogdown \
    config && \
  installGithub.r \
    "uribo/textlintr" && \
  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
