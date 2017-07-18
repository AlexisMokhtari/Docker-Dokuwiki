#!/bin/bash

cp -R /var/www/dokuwiki-$DOKU_VER/* /var/www/html

if [ -d /var/www/html/lib/plugins ]
then
	if [ $(ls /var/www/html/lib/plugins | wc -l) -eq 0 ]
	then
		cp -R /var/www/doku/lib/plugins /var/www/html/lib/
	fi
else
	cp -R /var/www/doku/lib/plugins /var/www/html/lib/
fi

if [ -d /var/www/html/conf ]
then
        if [ $(ls /var/www/html/conf | wc -l) -eq 0 ]
        then
                cp -R /var/www/doku/conf /var/www/html/
        fi
else
        cp -R /var/www/doku/conf /var/www/html/
fi

if [ -d /var/www/html/data ]
then
        if [ $(ls /var/www/html/data | wc -l) -eq 0 ]
        then
                cp -R /var/www/doku/data /var/www/html/
        fi
else
        cp -R /var/www/doku/data /var/www/html/data/
fi

if [ -d /var/www/html/lib/tpl ]
then
        if [ $(ls /var/www/html/lib/tpl | wc -l) -eq 0 ]
        then
                cp -R /var/www/doku/lib/tpl /var/www/html/lib
        fi
else
        cp -R /var/www/doku/lib/tpl /var/www/html/lib/
fi


chmod -R g+w /var/www/html/data
chmod -R g+w /var/www/html/conf
chmod -R g+w /var/www/html/lib/plugins
chmod -R g+w /var/www/html/lib/tpl
chgrp -R www-data /var/www/html/data
chgrp -R www-data /var/www/html/conf
chgrp -R www-data /var/www/html/lib/plugins
chgrp -R www-data /var/www/html/lib/tpl


#ln -s /var/www/html/data /backup/data
#ln -s /var/www/html/conf /backup/conf
#ln -s /var/www/html/lib/plugin /backup/plugin
