
#!/bin/bash
echo " 1. Installing mod_security package"

yum install mod_security -y

#ADD THESE 2 LINES in the end  of the belwo file 
# 1. "ServerTokens Full"
# 2. SecServerSignature “ManikCloud”

echo "ServerTokens Full" >> /etc/httpd/conf/httpd.conf

echo SecServerSignature “ManikCloud” >> /etc/httpd/conf/httpd.conf


echo " 2. Restarting Httpd Web Server "

service httpd restart

curl -I -L http://localhost
