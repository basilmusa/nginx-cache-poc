# NGINX
docker container rm -f nginx-cache-proxy-instance
docker image build -t nginx-cache-proxy:poc nginx-proxy-cache/
docker container run -p80:80 -d --name nginx-cache-proxy-instance nginx-cache-proxy:poc

# PHP
docker container rm -f php-apache-image-instance
docker image build -t php-apache-image:poc php-apache-image/.
docker container run -p 9090:80 -d --name php-apache-image-instance php-apache-image:poc

