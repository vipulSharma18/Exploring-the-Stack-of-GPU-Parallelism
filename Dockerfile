FROM python:3.12-slim-bookworm

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    curl \
    git \
    ssh \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# install uv
ADD https://astral.sh/uv/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh
ENV PATH="/root/.local/bin/:$PATH"

# just copy the project and the uv lock file, don't install dependencies
WORKDIR /app
COPY . /app

# Make entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Use the entrypoint script to install dependencies when a container first starts, making the images smaller
ENTRYPOINT ["/app/entrypoint.sh"]