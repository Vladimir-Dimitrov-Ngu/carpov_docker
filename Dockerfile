#FROM ubuntu:20.04
#
#RUN apt-get update &&  \
#    apt-get install -y vim wget curl git
#
#WORKDIR /home/vladimir
#
#COPY ./script.sh ./script.sh
#
#RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
#    -t robbyrussell \
#    -p https://github.com/zsh-users/zsh-autosuggestions \
#    -p https://github.com/zsh-users/zsh-completions
#
#ENV ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#dedede,bg=#9c9c9c,bold,underline"
#
#ENTRYPOINT ["zsh"]
#
##CMD ["zsh", "script.sh"]


#RUN echo "Start build"
#FROM ubuntu:22.04
#RUN apt-get update && apt-get install -y cowsay
#ENTRYPOINT ["/usr/games/cowsay"]
#CMD ["Hi there"]

#FROM ubuntu:22.04
#
#WORKDIR /home
#
#RUN mkdir -p ./user/app
#
#COPY script.sh ./user/app/script.sh
#
#CMD ["bash", "/home/user/app/script.sh"]

FROM ubuntu:22.04

COPY script_2.sh script_2.sh

ENTRYPOINT ["bash"]

CMD ["script_2.sh", "world"]