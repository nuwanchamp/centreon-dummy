#! /bin/bash

cp -R www/modules/dummy /usr/share/centreon/www/modules/dummy
chown -R apache.  /usr/share/centreon/www/modules/dummy

cp -R backend/config /usr/share/centreon/config
cp -R backend/src /usr/share/centreon/src
su - apache -s /bin/bash -c "/usr/share/centreon/bin/console cache:clear"