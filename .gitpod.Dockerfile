FROM adstewart/alloy-analyser-gitpod:latest

COPY .java $HOME/.java

COPY alloy $HOME/.local/bin/

# fix display resolution
RUN \
  sudo sed -i 's/1920x1080/1280x800/' /usr/bin/gp-vncsession

