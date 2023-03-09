#! /bin/bash

cp -R www/modules/dummy /usr/share/centreon/www/modules/dummy
chown -R apache.  /usr/share/centreon/www/modules/dummy

cp -R backend/config/packages/prod/CentreonDummy.yaml /usr/share/centreon/config/packages/prod
cp -R backend/config/packages/serializer/*    /usr/share/centreon/config/packages/serializer
cp -R backend/config/routes/*   /usr/share/centreon/config/routes/
cp -R backend/src/* /usr/share/centreon/src/
su - apache -s /bin/bash -c "/usr/share/centreon/bin/console cache:clear"