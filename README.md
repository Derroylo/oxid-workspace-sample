# Oxid 6 workspace template for gitpod.io

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/derroylo/oxid-workspace-sample)

## What is this?
This is an example workspace for [Gitpod](https://www.gitpod.io/) with the eCommerce System [Oxid](https://www.oxid-esales.com/) which aims to provide a fully usable workspace for development instead of just a simple sample.

## Getting started
Use the Button "Open in Gitpod" above to start a new workspace based on this repo. The first start will take some time (around 10 to 15 minutes) as he needs to build the Dockerfile, start the services and install Oxid. Afterwards you will see your IDE Instance and the Installation routine should open in your Browser. Within the installer you will notice that `mod_rewrite` is marked as red and you can´t continue the installation. That is a false positive error message and occurs because how gitpod handles port forwarding internaly. To correct it you need to edit the following file `vendor/oxid-esales/oxideshop-ce/source/Core/SystemRequirements.php`. Within the function `getRequiredModules` the entry for `mod_rewrite` needs to be removed.

***Note:*** This problem with port forwarding should be solved in a future version of gitpod.

During the installation process you will get asked for the database connection. Enter `localhost:3306` as host and leave the port field empty. The database is `gitpod`, user is `root` and the password is `gitpod`

***Note:*** Make sure you enter https:// before the shop URL within the setup or later in the config.inc.php otherwise your assets will not load

## Available services
Some additional services are already added via docker-compose.yml but you can add more any time.
- [MySQL](https://www.mysql.com) - Database
- [Mailpit](https://github.com/axllent/mailpit) - email testing tool for developers
- [Redis](https://redis.com) - In-Memory Database used mostly for caching
- [PhpMyAdmin](https://www.phpmyadmin.net/) - Webinterface for MySQL
- [PhpCacheAdmin](https://github.com/RobiNN1/phpCacheAdmin) - Webinterface for different caching systems like redis, memcached etc.

**Note:** Not all services are active per default, you can select active services via `gpt services select`

## Installed Tools
- [GPT](https://github.com/Derroylo/gitpod-tool) - An extendable Tool for web development with gitpod
- [NVM](https://github.com/nvm-sh/nvm) - Select the active nodejs version

## Documentation
- [Oxid](https://docs.oxid-esales.com/eshop/en/latest/welcome/index.html)
- [Oxid developer](https://docs.oxid-esales.com/developer/en/latest/)
- [Gitpod](https://www.gitpod.io/docs/introduction/getting-started)
- [Base of the Dockerfile](https://github.com/gitpod-io/workspace-images/blob/main/chunks/tool-nginx/Dockerfile)
- [gitpod.yml](https://www.gitpod.io/docs/references/gitpod-yml)
- [GPT](https://github.com/Derroylo/gitpod-tool) [GPT Documentation](https://derroylo.github.io)

## Informations
- xDebug is enabled via default, so the console might show some deprecated notices during setup
- Add `/phpinfo` to the url of the frontend (`https://8000-xxxxx.ws-xx.gitpod.io/`) to show the current used php version, active modules and settings
- Add `/xdebuginfo` to the url of the frontend (`https://8000-xxxxx.ws-xx.gitpod.io/`) to show the current xdebug settings
- Add `/adminer` to the url of the frontend (`https://8000-xxxxx.ws-xx.gitpod.io/`) to open Adminer, an alternative to phpmyadmin
- The installation routine of oxid can be found under `.devEnv/gitpod/scripts/oxid/install_demo.sh`

### 15.10.2023
- Added adminer as alternative to phpmyadmin
- Added xdebug info shortcut
- Updated .gpt.yml for GPT 0.4.x
- Corrected some problems with choosing nodejs version
- phpmyadmin and phpcacheadmin wouldn´t start sometimes correctly