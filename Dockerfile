from gitlab/gitlab-runner:latest

# Example on how to execute apt-get and clean up afterwards.
# RUN apt-get update \
#     && apt-get install -y \
#                jq \
#                curl \
#                bzip2 \
#                pv \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*
