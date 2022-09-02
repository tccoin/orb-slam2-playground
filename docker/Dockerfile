FROM youyu/orb_slam2:ubuntu18
ARG USER
ARG GID
ARG UID

# install libraries and tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    tilix \
    zsh \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

RUN chmod 777 /ORB_SLAM2

# add current user
RUN groupadd -g $GID -o $USER
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $USER

# use current user
USER $USER
WORKDIR /home/$USER/

# install zsh
COPY zsh zsh
RUN cd zsh && bash install_zsh.sh

# install gitstatus
RUN mkdir -p /home/$USER/.cache/gitstatus \
    && wget https://github.com/romkatv/gitstatus/releases/download/v1.5.4/gitstatusd-linux-x86_64.tar.gz -O - \
    | tar -zx -C /home/$USER/.cache/gitstatus/
