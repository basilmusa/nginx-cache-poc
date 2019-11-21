
Remove old containers:

    docker container rm php-apache-image-instance
    docker container rm nginx-cache-proxy-instance

Remove old images:

    docker image rm nginx-cache-proxy:poc
    docker image rm php-apache-image:poc

Build new images:
    
    docker build -t nginx-cache-proxy:poc nginx-proxy-cache/.
    docker image build -t php-apache-image:poc php-apache-image/.


Start containers, nginx on port 80 and php on port 9090:
    
    # Run NGINX reverse proxy
    docker container run -p80:80 -d --name nginx-cache-proxy-instance nginx-cache-proxy:poc
    # Run PHP/Apache on port 80 but exposed as 9090
    docker container run -p 9090:80 -d --name php-apache-image-instance php-apache-image:poc

To remove the running containers do the following:

    docker container rm -f nginx-cache-proxy-instance
    docker container rm -f php-apache-image-instance

