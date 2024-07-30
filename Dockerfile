FROM wordpress:latest
RUN apt update -y && \
    apt upgrade -y && \
    apt install sendmail -y
RUN chmod +x /home/activateSendmail.sh
RUN mkdir /var/www/html/wp-content/themes/theme-demo
WORKDIR /var/www/html/wp-content/themes/
COPY ./theme-demo/. /theme-demo/
