FROM rocker/tidyverse:latest

RUN set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    hugo \
    zlib1g-dev && \
  install2.r --error \
    blogdown \
    config && \
  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
