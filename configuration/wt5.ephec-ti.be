#Test 1ere config pour le www

server {
        listen 80;
        listen [::]:80;

        root /usr/share/nginx/html/www;
        index index.html index.htm index.php;

        server_name wt5.ephec-ti.be www.wt5.ephec-ti.be;

        location / {
                try_files $uri $uri/ =404;
        }

}
