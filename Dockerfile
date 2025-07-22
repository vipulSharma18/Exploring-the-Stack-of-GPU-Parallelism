FROM python:3.12-slim-bookworm

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    curl \
    git \
    ssh \
    && rm -rf /var/lib/apt/lists/*

# install uv
ADD https://astral.sh/uv/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh
ENV PATH="/root/.local/bin/:$PATH"

ARG TARGET=cpu
WORKDIR /app
COPY . /app

# install dependencies without the project
RUN --mount=type=cache,target=/root/.cache/uv,id=uv_build_cache \
    uv sync --extra ${TARGET}

CMD [ "/bin/bash" ]