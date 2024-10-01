FROM node:20-alpine
LABEL maintainer="Gautam V."

# Update and install required dependencies for Python and pip
RUN apk add --no-cache \
    aws-cli \
    bash \
    groff \
    less \
    py3-pip \
    python3

# Verify installations
RUN node -v && python3 --version && pip3 --version && aws --version

VOLUME /root/.aws
VOLUME /project

# # Add a debugging command to drop into a shell
# CMD ["/bin/bash"]