#
# Chrome and Node Dockerfile
#
# Dan
#

# Pull base image.
FROM bradrydzewski/node:0.10

# Install Chromium.
RUN \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
  sudo su root -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list' && \
  sudo apt-get update && \
  sudo apt-get install google-chrome-stable && \
  sudo rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901
