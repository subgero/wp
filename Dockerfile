FROM wordpress
RUN apt update -y && \
    apt upgrade -y && \
    apt install sendmail -y
ADD activateSendmail.sh /home/activateSendmail.sh
RUN chmod +x /home/activateSendmail.sh
# ENTRYPOINT ["sh", "/home/activateSendmail.sh"]