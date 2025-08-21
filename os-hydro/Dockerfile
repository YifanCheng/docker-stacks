FROM YifanCheng/base-geoscience

# Install code-server
USER root

ARG DEBIAN_FRONTEND=noninteractive

# Add sudo to jovyan user
RUN apt update && \
    apt install -y sudo && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
ARG LOCAL_USER=jovyan
ARG PRIV_CMDS='ALL'

# Install vscode
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Set the working directory and user
USER jovyan
WORKDIR /home/jovyan

RUN mkdir -p work
RUN mkdir -p /home/jovyan/.irods

# Expose the port code-server will run on
EXPOSE 8080

COPY entry.sh /bin/entry.sh
ENTRYPOINT ["bash", "/bin/entry.sh"]
