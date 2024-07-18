FROM ubuntu

RUN apt-get update

RUN apt-get install -y nginx git

ARG GITHUB_TOKEN

EXPOSE 80

RUN rm -rf /var/www/html/*

RUN git clone https://${GITHUB_TOKEN}@github.com/diranetafen/static-website-example.git /var/www/html/
# ADD ./ /var/www/html/


CMD ["nginx", "-g", "daemon off;" ]