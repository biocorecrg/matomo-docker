# Base image
FROM matomo:4.6-apache

# We add below some packages for allowing mailing from container
RUN apt-get update -y; apt-get install -y mailutils msmtp;

# We can choose to rm and mount this instead
COPY msmtprc /etc/msmtprc
COPY 99-mail.ini /usr/local/etc/php/conf.d/99-mail.ini

RUN rm -rf /var/lib/apt/lists/*
