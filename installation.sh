#!/bin/bash

echo " 1. Installing Httpd Web Server & curl packages"

yum install httpd curl -y 


echo " 2. Restarting Httpd Web Server "

service httpd restart


echo " 3. Checking Status Httpd Web Server "

service httpd status


echo " 4. Testing Web server locally"

curl localhost

sleep 5


echo " 5. Customizing index file"

cat > /var/www/html/index.html << EOL
<!DOCTYPE html>
<html>
<head>
<title>ManikCloud</title>
</head>
<body>

<h1>Ashoka Institute Cloud Workshop</h1>
<h2>By Varun Kumar Manik (Ambassador AWS).</h2>

</body>
</html>
EOL

echo " 6. Viewing index file"

cat  /var/www/html/index.html
