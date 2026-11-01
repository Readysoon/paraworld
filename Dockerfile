# ParaWorld: statische Seite, ausgeliefert von nginx
FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Dateien fuer nginx lesbar machen (sonst 403 Forbidden)
RUN chmod 644 /usr/share/nginx/html/index.html /etc/nginx/conf.d/default.conf
