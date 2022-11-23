FROM ubuntu
Maintainer vincent <qvanchinel@tip.edu.ph>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Updates Packages
RUN apt update; apt dist-upgrade -y

# Install Apache2
RUN apt install -y apache2

# Install Mariadb
RUN apt install -y mariadb-server

# Set Entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
