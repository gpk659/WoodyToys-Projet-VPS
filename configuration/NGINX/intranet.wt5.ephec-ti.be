#Test 1ere config pour l'intranet

server {
        listen 80;
        listen [::]:80;

        root /usr/share/nginx/html/intranet;
        index index.html index.htm index.php;

        server_name intranet.wt5.ephec-ti.be;

        location / {
                try_files $uri $uri/ =404;
        }

}
