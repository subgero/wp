FROM wordpress:latest
RUN apt update -y && \
    apt upgrade -y && \
    apt install sendmail -y
ADD activateSendmail.sh /home/activateSendmail.sh
RUN chmod +x /home/activateSendmail.sh
EXPOSE 3306
# ENV WORDPRESS_DB_HOST=localhost
# ENV WORDPRESS_DB_USER=root
# ENV WORDPRESS_DB_PASSWORD=passwordtest
# ENV WORDPRESS_DB_NAME=dbtest