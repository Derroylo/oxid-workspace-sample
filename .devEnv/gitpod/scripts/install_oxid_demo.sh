#!/usr/bin/env bash

sudo update-alternatives --set php /usr/bin/php8.1
sudo update-alternatives --set php-config /usr/bin/php-config8.1

sudo apt-get update
sudo apt-get install -y php8.1-curl
sudo apt-get install -y php8.1-zip

composer create-project --no-dev oxid-esales/oxideshop-project demo dev-b-6.5-ce

mv demo/* .
rm -rf demo/