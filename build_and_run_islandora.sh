#!/bin/bash

# Update Composer!
cd pdx
composer update

cp ../configs/settings.dev.yml config/

php -S localhost:8585 -t src src/index.php