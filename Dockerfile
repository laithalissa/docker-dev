FROM centos
COPY "setup.sh" "/setup.sh"
RUN /setup.sh
COPY "themes.sh" "/themes.sh"
RUN /themes.sh
ENTRYPOINT ["/bin/zsh"]
