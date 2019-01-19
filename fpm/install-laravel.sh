cd / && ~/.composer/vendor/bin/laravel new temporary-app
mv /temporary-app/* /var/www/laravel-app
rm /temporary-app/ -R
chmod a+rw /var/www/laravel-app/storage /var/www/laravel-app/bootstrap/cache/ -R