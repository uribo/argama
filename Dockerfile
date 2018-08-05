FROM rocker/tidyverse:latest

RUN set -x && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends \
    hugo \
    zlib1g-dev && \
  install2.r --error \
    blogdown \
    config
