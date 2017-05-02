#Test 1ere config pour le b2b

server {
        listen 80;
        listen [::]:80;

        root /usr/share/nginx/html/b2b;
        index index.html index.htm index.php;

        server_name b2b.wt5.ephec-ti.be;

        location / {
                try_files $uri $uri/ =404;
        }

}
