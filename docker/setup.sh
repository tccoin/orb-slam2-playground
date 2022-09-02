docker pull youyu/orb_slam2:ubuntu18
docker build --build-arg USER=$USER --build-arg GID=$(id -g) --build-arg UID=$(id -u) --tag tccoin/orb-slam2 .
touch .zsh_history
docker-compose run orbslam