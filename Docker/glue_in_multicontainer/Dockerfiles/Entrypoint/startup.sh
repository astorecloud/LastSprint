#!/bin/bash
/usr/sbin/service php8.1-fpm start
if ! [ -f /run/cloudboost ]; then
        echo "Composer not installed";
        cd /public_html;
        composer install;
        php artisan key:generate;
        touch /run/cloudboost;
        echo "Database importing started";
	mysql -h$CNTR_DB -u$APP_DB_USER -p$APP_DB_PASS $APP_DB < /public_html/$DB_DUMP_FILE;
        echo "Database importing Completed";
        chown -R www-data:www-data /public_html/$REPO_PROJECT_FOLDER/storage; 
        chown -R www-data:www-data /public_html/$REPO_PROJECT_FOLDER/bootstrap/cache;
else
        echo "project already initialized";
fi

tail -f /dev/null
