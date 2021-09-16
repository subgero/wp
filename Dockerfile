FROM wordpress
RUN apt update -y && \
    apt upgrade -y && \
    apt install sendmail -y

