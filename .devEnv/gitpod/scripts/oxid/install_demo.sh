#!/usr/bin/env bash

# Infos for GitpodTool
#
# gptBranch: oxid
# gptBranchDescription: Commands for Oxid
# gptCommand: install_demo
# gptDescription: install oxid

# Install oxid 7
composer create-project --no-dev oxid-esales/oxideshop-project demo dev-b-7.0-ce

mv demo/* .
rm -rf demo/

# Run oxid setup
bin/oe-console oe:setup:shop --db-host=localhost:3306 --db-name=gitpod --db-user=root --db-password=gitpod --shop-url=http://ce700.local --shop-directory=/var/www/oxideshop/source --compile-directory=/var/www/oxideshop/source/tmp --language=en