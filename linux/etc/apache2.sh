#on ubuntu:

#enable ssl:
a2enmod ssl
/etc/apache2/sites-enabled/001-ssl.conf <<<EOF
<VirtualHost *:443>
  DocumentRoot /var/www/html
  SSLEngine on
  SSLCertificateFile /etc/apache2/ssl/apache.cert
  SSLCertificateKeyFile /etc/apache2/ssl/apache.pem
</VirtualHost>
EOF

#forward subdomain to localhost:port (tomcat)
a2enmod proxy
a2enmod proxy_http
/etc/apache2/sites-enabled/002-tomcat.conf <<<EOF
<VirtualHost *:443>
  ServerName tomcat.ceasar.xyz
  ProxyRequests Off
  ProxyPreserveHost On
  SSLEngine on
  SSLCertificateFile /etc/apache2/ssl/apache.cert
  SSLCertificateKeyFile /etc/apache2/ssl/apache.pem
  ProxyPass / http://localhost:8080/
  ProxyPassReverse / http://localhost:8080/
</VirtualHost>
EOF
