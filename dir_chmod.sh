#!/bin/bash

chmod -R g+w /var/www/html/data
chmod -R g+w /var/www/html/conf
chmod -R g+w /var/www/html/lib/plugins
chmod -R g+w /var/www/html/lib/tpl
chgrp -R www-data /var/www/html/data
chgrp -R www-data /var/www/html/conf
chgrp -R www-data /var/Www/html/lib/plugins
chgrp -R www-data /var/www/html/lib/tpl
